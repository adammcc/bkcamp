var BkColumn = React.createClass({
  render: function () {
    return (
      <div className="bk-column col-sm-6">
        { this.props.threeTitles.map(function (title) {
          return (
            <BkBox src={ info[title].src } url_ending={ title } alt={ info[title].alt } key={ info[title].alt } title={info[title].title} pics={ info[title].pics } article_type={ info[title ].article_type }>
              <p className="bk-box__blurb">
                <span className="bk-box__ellipsis">. . .</span>
                { info[title].main_blurb }
              </p>
            </BkBox>
          );
        })}
      </div>
    );
  }
});