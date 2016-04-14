var GalleryNav = React.createClass({
  render: function () {
    return (
      <div className="bk-show__nav-item-container bk-show__hide-til-hover">
        <a className="bk-show__nav-item -home" href="#articles/everything">
          <i className="fa fa-home"></i>
        </a>

        <div className="bk-show__nav-item -prev" onClick={ this.props.prevPic }>
          <i className="fa fa-angle-left"></i>
        </div>

        <div className="bk-show__nav-item -next" onClick={ this.props.nextPic }>
          <i className="fa fa-angle-right"></i>
        </div>
      </div>
    )
  }
});