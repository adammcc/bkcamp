var RouteHandler = ReactRouter.RouteHandler,
    Link = ReactRouter.Link;

var App = React.createClass({
  getInitialState() {
    return {
      filter: 'everything'
    }
  },
  render: function() {
    return (
      <div>
        <RouteHandler {...this.props} />
      </div>
    );
  }
});