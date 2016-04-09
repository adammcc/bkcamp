var BkBox = React.createClass({
  render: function () {
    var article_type = this.props.article_type == 'gallery' ? 'article' : 'slide_show'
    var path =  "#" + article_type + "/" + this.props.url_ending
    return (
      <a href={ path }>
        <div className="bk-box">
          <div className='bk-box__img-container'>
            <img src={this.props.src} alt={this.props.alt} height="auto" width="100%" />
            <i className="fa fa-chevron-right"></i>
            <div className='bk-box__note-container'>
              <h4 className="bk-box__title">{ this.props.title }</h4>
            </div>
          </div>
          { this.props.children }
        </div>
      </a>
    );
  }
});