var BkColumn = React.createClass({
  render: function () {
    var stringLength = this.props.stringLength
    return (
      <div className={ "bk-column col-sm-" + this.props.colWidth }>
        { this.props.threeTitles.map(function (title) {
          if ( info[title].main_blurb.length ) {
            main_blurb = info[title].main_blurb.replace(/(<([^>]+)>)/ig, "").substr(0, stringLength)
          } else if ( info[title].article_type == 'slide_show' ) {
            main_blurb = info[title].blurb.replace(/(<([^>]+)>)/ig, "").substr(0, stringLength)
          } else {
            main_blurb = info[title].pics[0][2].replace(/(<([^>]+)>)/ig, "").substr(0, stringLength)
          }
          if (main_blurb.length == stringLength) {
            main_blurb = main_blurb + '...'
          }
          return (
            <BkBox src={ info[title].src } url_ending={ title } alt={ info[title].alt } key={ info[title].alt } title={info[title].title} pics={ info[title].pics } article_type={ info[title ].article_type }>
              <p className="bk-box__blurb">
                <span className="bk-box__ellipsis">. . .</span>
                { main_blurb }
              </p>
            </BkBox>
          );
        })}
      </div>
    );
  }
});