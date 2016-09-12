var BodyContent = React.createClass({
  getInitialState: function () {
    return {
      pics: []
    };
  },
  split: function (a, n) {
    var len = a.length, output = [], i = 0;
    while (i < len) {
      var size = Math.ceil((len - i) / n--);
      output.push(a.slice(i, i += size));
    }
    return output;
  },
  getArticles: function () {
    var articleTitles = Object.keys(info)
    if (this.props.params.filter == 'everything') {
      var featureTitle = this.getFeatureTitle()
      var index = articleTitles.indexOf(featureTitle);

      if (index > -1) { articleTitles.splice(index, 1); }

      return this.split(articleTitles, 2);
    } else {
      var filteredTitles = []
      var filter = this.props.params.filter
      $.each( articleTitles, function( i, title ) {
        if ( info[title]['filter'] == filter ) {
          filteredTitles.push(title);
        };
      });
      return this.split(filteredTitles, 2);
    };
  },
  getFeatureTitle: function () {
    var articleTitles = Object.keys(info)
    var featureTitle = ""
    $.each( articleTitles, function( i, title ) {
      if ( info[title]["feature_article"] ) {
        featureTitle = title;
      };
    });

    return featureTitle;
  },
  render: function () {
    var titles_in_threes = this.getArticles()
    var featureTitle = this.getFeatureTitle()
    var filter = this.props.params.filter
    return (
      <div>
        <BkMainHeader filter={ filter } path="/" />
        {
          filter == 'everything' ?
            <BkFeatureArticle src={ info[featureTitle].feature_img_src } alt={ featureTitle } key={ featureTitle } title={ info[featureTitle].title } pics={ info[featureTitle].pics }  article_type={ info[featureTitle ].article_type } >
              { info[featureTitle].main_blurb }
            </BkFeatureArticle>
          :
            false
        }

        { titles_in_threes.map(function (three_titles) {
          return (
            <BkColumn key={three_titles[0]} threeTitles={three_titles} />
          );
        })}
      </div>
    );
  }
});