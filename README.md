# echarts-rails

Wrappers of Echarts Javascript Chart Libary for Rails 3.1+

Check out how to use echarts at http://echarts.baidu.com

* echarts-rails 0.1.0 -> echarts 3.1.3
* echarts-rails 0.1.4 -> echarts 3.2.3
* echarts-rails 0.1.5 -> echarts 3.3.0
* echarts-rails 0.1.6 -> echarts 3.3.2

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'echarts-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install echarts-rails


Now you need to edit your `app/assets/javascripts/application.js` file and add `echarts` , `echarts-simple` or `echarts-common` into it:

```
//= require echarts
```

The difference between `echarts` , `echarts.simple` or `echarts.common` :

* `echarts`: 包含所有图表组件。
* `echarts.simple`: 只包含基础图表： 折 柱 饼。
* `echarts.common`: 包含常用的图表组件：折 柱 饼 散点 图例 工具栏 标注 标线 数据区域缩放

And you're done!




## Usage

```
<div id="main" style="width: 600px; height: 400px;"></div>
<script>
  // 基于准备好的dom，初始化echarts实例
  var myChart = echarts.init(document.getElementById('main'));

  // 指定图表的配置项和数据
  var option = {
      title: {
          text: 'ECharts 入门示例'
      },
      tooltip: {},
      legend: {
          data:['销量']
      },
      xAxis: {
          data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
      },
      yAxis: {},
      series: [{
          name: '销量',
          type: 'bar',
          data: [5, 20, 36, 10, 10, 20]
      }]
  };

  // 使用刚指定的配置项和数据显示图表。
  myChart.setOption(option);
</script>
```



## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

