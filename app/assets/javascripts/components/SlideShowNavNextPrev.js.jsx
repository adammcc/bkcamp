var SlideShowNavNextPrev = React.createClass({
  render: function () {
    return (
      <div>
        <div className="bk-show__nav-item-container -prev -slide-show bk-show__hide-til-hover">
          <div className="bk-show__nav-item -prev -slide-show bk-show__hide-til-hover" onClick={ this.props.prevPic }>
            <i className="fa fa-angle-left"></i>
          </div>
        </div>

        <div className="bk-show__nav-item-container -next -slide-show bk-show__hide-til-hover">
          <div className="bk-show__nav-item -next -slide-show bk-show__hide-til-hover" onClick={ this.props.nextPic }>
            <i className="fa fa-angle-right"></i>
          </div>
        </div>
      </div>
    )
  }
});