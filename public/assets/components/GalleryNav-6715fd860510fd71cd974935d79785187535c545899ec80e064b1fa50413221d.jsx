var GalleryNav = React.createClass({
  render: function () {
    var multiple_pics = this.props.picCount > 1
    var modifier = multiple_pics ? '' : '-short'
    return (
      <div className={ "bk-show__nav-item-container " + modifier }>
        <a className={ "bk-show__nav-item -home "  + modifier } href="#articles/everything">
          <i className="fa fa-home"></i>
        </a>

        {
          multiple_pics ?
            <div>
              <div className="bk-show__nav-item -prev" onClick={ this.props.prevPic }>
                <i className="fa fa-angle-left"></i>
              </div>

              <div className="bk-show__nav-item -next" onClick={ this.props.nextPic }>
                <i className="fa fa-angle-right"></i>
              </div>
            </div>
          :
            false
        }
      </div>
    )
  }
});