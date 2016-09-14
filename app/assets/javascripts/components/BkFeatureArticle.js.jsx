var BkFeatureArticle = React.createClass({
  render: function () {
    var article_type = this.props.article_type == 'gallery' ? 'article' : 'slide_show'
    var path  =  "#" + article_type + "/" + this.props.alt
    return (
      <a href={path}>
        <div className="bk-feature-article col-sm-12">

          <div className='bk-box__img-container col-sm-8'>
            <div className='bk-box__img-container--inner'>
              <img src={this.props.src} alt={this.props.alt} height="auto" width="100%" />
            </div>
          </div>

          <div className='bk-box__feature-note-container col-sm-4'>
            <p className="bk-box__feature-title">{ this.props.title }</p>
            { this.props.children }
            <br/><br/>
            <div className='bk-feature-article__read_more'>
              <i className="fa fa-angle-double-right"></i> READ MORE
            </div>
          </div>

        </div>
      </a>
    );
  }
});