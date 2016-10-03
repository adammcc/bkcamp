var BkMainHeader = React.createClass({
  render: function () {
    return (
      <div>
        <a href={ this.props.path }>
          <div className="bk-header row">
            <h1 className="bk-header__title"><span className="-field">Field </span> <span className="-and">&</span> Fancy</h1>
             <div className="bk-ellipsis">. . .</div>
          </div>
        </a>
        <BkFilters filter={ this.props.filter }/>
      </div>
    );
  }
});