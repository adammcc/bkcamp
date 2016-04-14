var SlideShowNav = React.createClass({
  render: function () {
    if (this.props.picCount > 1) {
      var nextPrev = <SlideShowNavNextPrev nextPic={ this.props.nextPic } prevPic={ this.props.prevPic } />
    } else {
      var nextPrev = ''
    }
    return (
      <div>
        <div className="bk-show__nav-item-container -home -slide-show bk-show__hide-til-hover">
          <a className="bk-show__nav-item -home -slide-show" href="#articles/everything">
            <i className="fa fa-home"></i>
          </a>
        </div>

        { nextPrev }

      </div>
    )
  }
});