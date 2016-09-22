var BkShow = React.createClass({
  getInitialState: function () {
    return {
      all_pics: info[this.props.params.name].pics,
      activePic: info[this.props.params.name].pics[0],
      recommendations: this.recommendations(),
      galleryMode: false
    };
  },
  componentDidMount: function() {
    this.reset();
  },
  componentWillReceiveProps: function(props) {
    this.setState({
      all_pics: info[props.params.name].pics,
      activePic: info[props.params.name].pics[0],
      recommendations: this.recommendations()
    }, this.reset);
  },
  reset: function () {
    this.textToHtml();
    $(window).scrollTop(0);
  },
  textToHtml: function () {
    $('.js-show__image-blurb').each(function() {
      $html = $($.parseHTML($(this).text()))
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
  switchMode: function() {
    this.setState({
      galleryMode: !this.state.galleryMode
    }, this.textToHtml);

    if (this.state.galleryMode) {
      $('.bk-show__gallery').text('View gallery');
    } else {
      $('.bk-show__gallery').text('Hide gallery')
    }
  },
  recommendations: function () {
    var articleTitles = Object.keys(info);
    var titles = [];

    while (titles.length < 3 ) {
      title = articleTitles[Math.floor(Math.random()*(articleTitles.length - 1))];
      if ( titles.indexOf(title) == -1 && info[this.props.params.name].pics.articleName != title) {
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
        <BkMainHeader path="#articles/everything" />
        <div className="bk-show__title -center"  onClick={ this.switchMode }>{ info[this.props.params.name].title }</div>
        <div className="bk-show__gallery" onClick={ this.switchMode }>View gallery</div>

        {
          this.state.galleryMode ?
            <div className="col-sm-9">
              <div className="bk-show__main-image">
                <GalleryNav prevPic={this.prevPic} nextPic={this.nextPic} picCount={ info[this.props.params.name].pics.length } />
                <img src={ this.state.activePic[0] } alt="bug" width="100%" height="90%"/>

                <BkShowThumbs pics={info[this.props.params.name].pics} setActivePic={setActivePic} activePic={activePic} />
                <div className="bk-show__image-blurb js-show__image-blurb">{ this.state.activePic[2] }</div>
              </div>
            </div>
          :
            <div className="bk-show__main-image col-sm-9">
              { this.state.all_pics.map(function (pic) {
                return (
                  <div>
                    <img src={ pic[0] } alt="pic" width="100%" height="90%"/>
                    <p className='bk-show__image-blurb js-show__image-blurb'>
                      { pic[2] }
                    </p>
                  </div>
                );
              })};
            </div>
        }

        <div className="bk-show__title -center col-sm-3">More articles</div>
        <BkColumn threeTitles={ this.state.recommendations } colWidth='3' stringLength='75' />
      </div>
    );
  }
})