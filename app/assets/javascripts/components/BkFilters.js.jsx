var BkFilters = React.createClass({
  getInitialState() {
    return {
      filterBy: this.props.filter
    };
  },
  setFilter: function (filter) {
    this.setState({
      filterBy: filter
    });
  },
  render: function () {
    return (
      <div className="bk-filters__row row">
        <div className="bk-filters__container col-sm-10 col-sm-offset-1 col-xs-12 col-xs-offset-0">
          <Link to='/articles/everything'>
            <div onClick={ this.setFilter.bind(null,'everything') } className={ (this.state.filterBy == 'everything') ? "col-sm-3 col-xs-3 bk-filters__option -selected" : "col-sm-3 col-xs-3 bk-filters__option" }>
              All
            </div>
          </Link>
          <Link to='/articles/getayways'>
            <div onClick={ this.setFilter.bind(null,'getayways') } className={ this.state.filterBy == 'getayways' ? "col-sm-3 col-xs-3 bk-filters__option -selected" : "col-sm-3 col-xs-3 bk-filters__option" }>
              Near
            </div>
          </Link>
          <Link to='/articles/treks'>
            <div onClick={ this.setFilter.bind(null,'treks') } className={ this.state.filterBy == 'treks' ? "col-sm-3 col-xs-3 bk-filters__option -selected" : "col-sm-3 col-xs-3 bk-filters__option" }>
              Far
            </div>
          </Link>
          <Link to='/articles/lifestyle'>
            <div onClick={ this.setFilter.bind(null,'lifestyle') } className={ this.state.filterBy == 'lifestyle' ? "col-sm-3 col-xs-3 bk-filters__option -selected" : "col-sm-3 col-xs-3 bk-filters__option" }>
              Lifestyle
            </div>
          </Link>
        </div>
      </div>
    )
  }
});