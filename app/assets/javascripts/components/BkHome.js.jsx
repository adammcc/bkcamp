var BkHome = React.createClass({
  getInitialState: function () {
    return {
      bgItem: homeImages[0],
      bgImage: homeImages[0][0],
      bgPosition: homeImages[0][1]
    };
  },
  nextPic: function () {
    var currentIndex = homeImages.indexOf(this.state.bgItem);
    var nextIndex = currentIndex == homeImages.length - 1 ? 0 : currentIndex + 1;

    this.setState({ bgItem: homeImages[nextIndex] });
    this.setState({ bgImage: homeImages[nextIndex][0] });
    this.setState({ bgPosition: homeImages[nextIndex][1] });
    var nextBkHomeContainerStyle = [{
      '-webkit-background-size': 'cover',
      '-moz-background-size': 'cover',
      '-o-background-size': 'cover',
      'background-size': 'cover',
    }];
    $('.bk-home-container').css(nextBkHomeContainerStyle)
  },
  render: function () {
    var bkHomeContainerStyle = {
      background: 'url(' + this.state.bgImage + ') no-repeat center ' + this.state.bgPosition + ' fixed',
      minHeight: '100%',
      width: '100%',
      position: 'absolute',
      left: 0,
      top: 0,
      color: 'white',
      WebkitBackgroundSize: 'cover',
      MozBackgroundSize: 'cover',
      OBackgroundSize: 'cover',
      backgroundSize: 'cover'
    };
    return (
      <div className="bk-home-container" style={bkHomeContainerStyle}>
        <div className="bk-home__center">
          <Link to='/articles/everything'>
            <h1 className="bk-header__title -home">Brooklyn Camper</h1>
            <p className="bk-home__enter bk-home__faded">ENTER</p>
          </Link>
        </div>

        <div className="bk-home__bottom_left bk-home__faded">
          <a href={this.state.bgItem[3]}>
            <p>{this.state.bgItem[2]}</p>
          </a>
        </div>

        <div className="bk-home__bottom_right">
          <div className="bk-home-circle bk-home__faded" onClick={ this.nextPic }>
            <i className="fa fa-angle-right"></i>
          </div>
        </div>
      </div>
    );
  }
});