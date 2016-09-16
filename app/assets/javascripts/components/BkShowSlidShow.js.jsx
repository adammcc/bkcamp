var BkShowSlidShow = React.createClass({
  getInitialState: function () {
    return {
      activePic: info[this.props.params.name].pics[0],
      recommendations: this.recommendations(),
      recipe: info[this.props.params.name].recipe,
      instructions: info[this.props.params.name].instructions
    };
  },
  componentDidMount: function() {
    this.reset();
  },
  componentWillReceiveProps: function(props) {
    this.setState({
      activePic: info[props.params.name].pics[0],
      recommendations: this.recommendations(),
      recipe: info[props.params.name].recipe,
      instructions: info[props.params.name].instructions
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
    var currentPicIndex = info[this.props.params.name].pics.indexOf(this.state.activePic);
    var nextPicIndex = currentPicIndex == info[this.props.params.name].pics.length - 1 ? 0 : currentPicIndex + 1;
    this.setState({
      activePic: info[this.props.params.name].pics[nextPicIndex]
    });
  },
  prevPic: function () {
    var currentPicIndex =  info[this.props.params.name].pics.indexOf(this.state.activePic);
    var prevPicIndex = currentPicIndex == 0 ? info[this.props.params.name].pics.length - 1 : currentPicIndex - 1;
    this.setState({
      activePic: info[this.props.params.name].pics[prevPicIndex]
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
    var recipe = this.state.recipe
    var instructions = this.state.instructions
    return (
      <div className="col-sm-12">
        <BkMainHeader path="#articles/everything" />
        <div className="bk-show__title">[ { info[this.props.params.name].title } ]</div>

        <div className="col-sm-8">
          <div className="bk-show__main-image -slide-show">
            <SlideShowNav prevPic={this.prevPic} nextPic={this.nextPic} picCount={ info[this.props.params.name].pics.length } />
            <img src={ this.state.activePic } alt="bug" className="img-responsive" width="100%" height="90%"/>
          </div>
          {(
            recipe.length ?
            <div className="bk-show__recipe--container">
              <div className="col-sm-6">
                  <dl className="bk-show__recipe js-show__recipe">

                      { recipe.map(function (line) {
                        return (<p key={ line }>{line}</p>);
                      })}

                  </dl>
              </div>
              {(
                instructions != "[]" ?
                  <div className="bk-show__instructions js-show__image-blurb col-sm-6">
                    { instructions }
                  </div>
                :
                  false
              )}
            </div>
          :
            false
          )}
        </div>

        <div className="bk-show__image-blurb -slide-show js-show__image-blurb">{ info[this.props.params.name]['blurb'] }</div>

        <div className="col-sm-12">
          <div className="bk-show__title">[ More articles ]</div>
          <BkRow threeTitles={ this.state.recommendations } />
        </div>
      </div>
    );
  }
})