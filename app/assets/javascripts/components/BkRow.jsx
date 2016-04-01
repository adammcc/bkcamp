var BkRow = React.createClass({
  render: function () {
    return (
      <div className="bk-article-row row">
        { this.props.threeTitles.map(function (title) {
          return (
            <div className="bk-article-row__box col-sm-4">
              <BkBox src={ info[title].src } url_ending={ title } alt={ info[title].alt } key={ info[title].alt } title={info[title].title} pics={ info[title].pics } article_type={ info[title ].article_type }>
                <p className="bk-box__blurb">
                  <span className="bk-box__ellipsis">. . .</span>
                  { info[title].main_blurb }
                </p>
              </BkBox>
            </div>
          );
        })}
      </div>
    );
  }
});