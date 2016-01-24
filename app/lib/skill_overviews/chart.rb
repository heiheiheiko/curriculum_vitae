module SkillOverviews
  class Chart
    I18N_SCOPE = 'enums.chronicle_item_skill.experience'

    def initialize(title, skill_groups)
      @title = title
      @skill_groups = skill_groups
      data_preparation
    end

    def draw
      LazyHighCharts::HighChart.new('graph') do |f|
        f.chart(
          type: 'bar',
          backgroundColor:'rgba(255, 255, 255, 0)',
          height: 25 * @skill_groups.size + 100
        )

        f.xAxis(
          categories: @skill_groups.map(&:title),
          height: 25 * @skill_groups.size,
          labels: {
            style: { color: '#fff'}
          },
          tickLength: 0
        )

        f.series(name: I18n.t(:rare, scope: I18N_SCOPE), data: @rare)
        f.series(name: I18n.t(:regular, scope: I18N_SCOPE), data: @regular)
        f.series(name: I18n.t(:frequent, scope: I18N_SCOPE), data: @frequent)

        f.plotOptions(
          series: { stacking: 'normal' },
          bar: {
            pointWidth:20,
            borderRadius:0,
            borderWidth:0
          }
        )

        f.yAxis(
          height: 25 * @skill_groups.size,
          tickInterval: 1,
          title: {
            text: I18n.t('time_range.years'),
            style: { color: '#fff' }
          },
          labels: {
            style: { color: '#fff' }
          }
        )

        f.tooltip(
          borderWidth: 0,
          shadow: false,
          backgroundColor: "rgba(255,255,255,0)",
          useHTML: true
        )

        f.legend(
          itemStyle: { color: '#fff' },
          reversed: true,
          borderRadius:0,
          borderWidth:0
        )
        f.credits(enabled: false)
      end
    end

    def data_preparation
      @frequent = []
      @regular = []
      @rare = []
      @skill_groups.each do |skill_group|
        experience_group = skill_group.experience_groups.find { |eg| eg.type == :frequent }
        experience_group ? @frequent << experience_group.time_range.range_in_years : @frequent << 0

        experience_group = skill_group.experience_groups.find { |eg| eg.type == :regular }
        experience_group ? @regular << experience_group.time_range.range_in_years : @regular << 0

        experience_group = skill_group.experience_groups.find { |eg| eg.type == :rare }
        experience_group ? @rare << experience_group.time_range.range_in_years : @rare << 0
      end
    end
  end
end
