var BkShowSlidShow = React.createClass({
  getInitialState: function () {
    return {
      activePic: this.props.pics[0],
      recommendations: this.recommendations()
    };
  },
  componentDidMount: function() {
    this.reset();
  },
  componentWillReceiveProps: function(props) {
    this.setState({
      activePic: props.pics[0],
      recommendations: this.recommendations()
    }, this.reset);
  },
  reset: function () {
    this.textToHtml();
    $(window).scrollTop(0);
  },
  textToHtml: function () {
    $('.js-show__image-blurb').each(function(){
      var html = $(this).text()
      $html = $($.parseHTML(html))
      $(this).html($html)
    });
    $('.js-show__recipe').children().each(function(){
      var html = $(this).text()
      $html = $($.parseHTML(html))
      $(this).html($html)
    });
  },
  setActivePic: function (pic) {
    this.setState({
      activePic: pic
    }, this.textToHtml);
  },
  nextPic: function () {
    var currentPicIndex = this.props.pics.indexOf(this.state.activePic);
    var nextPicIndex = currentPicIndex == this.props.pics.length - 1 ? 0 : currentPicIndex + 1;
    this.setState({
      activePic: this.props.pics[nextPicIndex]
    });
  },
  prevPic: function () {
    var currentPicIndex =  this.props.pics.indexOf(this.state.activePic);
    var prevPicIndex = currentPicIndex == 0 ? this.props.pics.length - 1 : currentPicIndex - 1;
    this.setState({
      activePic: this.props.pics[prevPicIndex]
    });
  },
  recommendations: function () {
    var articleTitles = Object.keys(info);
    var titles = [];
    while (titles.length < 3 ) {
      title = articleTitles[Math.floor(Math.random()*(articleTitles.length - 1))];
      if ( titles.indexOf(title) == -1 && this.props.articleName != title ) {
        titles.push(title);
      };
    }

    return titles;
  },
  render: function () {
    var setActivePic = this.setActivePic
    var activePic = this.state.activePic
    var recipe = info[this.props.articleName]['recipe']
    var instructions = info[this.props.articleName]['instructions']

    return (
      <div>
        <BkMainHeader path="#articles" />
        <div className="bk-show__title">[ { this.props.title } ]</div>

        <div className="col-sm-8">
          <div className="bk-show__main-image">
            <SlideShowNav prevPic={this.prevPic} nextPic={this.nextPic} picCount={ info[this.props.articleName]['pics'].length } />
            <img src={ this.state.activePic } alt="bug" width="100%" height="90%"/>
          </div>
          <div className="bk-show__recipe--container">
            <div className="col-sm-6">
              {(
                recipe.length ?
                  <dl className="bk-show__recipe js-show__recipe">

                      { recipe.map(function (line) {
                        return ({ line });
                      })}

                  </dl>
                :
                  false
              )}
            </div>
            {(
              instructions.length ?
                <div className="bk-show__instructions js-show__image-blurb col-sm-6">
                  { instructions }
                </div>
              :
                false
            )}
          </div>
        </div>


        <div className="col-sm-3">
          <div className="bk-show__image-blurb js-show__image-blurb">{ info[this.props.articleName]['blurb'] }</div>
        </div>

        <div className="col-sm-12">
          <div className="bk-show__title">[ More articles ]</div>
          <BkRow threeTitles={ this.state.recommendations } />
        </div>
      </div>
    );
  }
})