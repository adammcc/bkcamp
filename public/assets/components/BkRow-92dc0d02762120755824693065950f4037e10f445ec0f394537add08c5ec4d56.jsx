var BkRow = React.createClass({
  render: function () {
    return (
      <div className="bk-article-row row">
        { this.props.threeTitles.map(function (title) {
          if ( info[title].main_blurb.length ) {
            main_blurb = info[title].main_blurb.replace(/(<([^>]+)>)/ig, "").substr(0, 275)
          } else if ( info[title].article_type == 'slide_show' ) {
            main_blurb = info[title].blurb.replace(/(<([^>]+)>)/ig, "").substr(0, 275)
          } else {
            main_blurb = info[title].pics[0][2].replace(/(<([^>]+)>)/ig, "").substr(0, 275)
          }
          if (main_blurb.length == 275) {
            main_blurb = main_blurb + '...'
          }
          return (
            <div className="bk-article-row__box col-sm-4" key={title}>
              <BkBox src={ info[title].src } url_ending={ title } alt={ info[title].alt } key={ info[title].alt } title={info[title].title} pics={ info[title].pics } article_type={ info[title ].article_type }>
                <p className="bk-box__blurb">
                  <span className="bk-box__ellipsis">. . .</span>
                  { main_blurb }
                </p>
              </BkBox>
            </div>
          );
        })}
      </div>
    );
  }
});