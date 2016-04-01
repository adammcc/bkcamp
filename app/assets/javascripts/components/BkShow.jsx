var BkShow = React.createClass({
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
    var html = $('.js-show__image-blurb').text()
    $html =$($.parseHTML(html))
    $('.js-show__image-blurb').html($html)
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
      if ( titles.indexOf(title) == -1 && this.props.articleName != title) {
        titles.push(title);
      };
    }

    return titles;
  },
  render: function () {
    var setActivePic = this.setActivePic
    var activePic = this.state.activePic
    return (
      <div>
        <BkMainHeader path="#articles" />
        <div className="bk-show__title">[ { this.props.title } ]</div>

        <div className="bk-show__main-image col-sm-8">
          <GalleryNav prevPic={this.prevPic} nextPic={this.nextPic} />
          <img src={ this.state.activePic[0] } alt="bug" width="100%" height="90%"/>
        </div>

        <div className="col-sm-3">
          <BkShowThumbs pics={this.props.pics} setActivePic={setActivePic} activePic={activePic} />
          <div className="bk-show__image-blurb js-show__image-blurb">{ this.state.activePic[2] }</div>
        </div>

        <div className="col-sm-12">
          <br/><br/><br/>
          <div className="bk-show__title">[ More articles ]</div>
          <BkRow threeTitles={ this.state.recommendations } />
        </div>
      </div>
    );
  }
})