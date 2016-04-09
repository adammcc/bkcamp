var Route = ReactRouter.Route;
    DefaultRoute = ReactRouter.DefaultRoute;

this.MyRoutes = (
  <Route name="home" path="/" handler={App}>
    <DefaultRoute handler={BkHome} />
    <Route path="articles" handler={BodyContent}>
      <Route path=":filter" handler={BodyContent}/>
    </Route>
    <Route path="article">
      <Route path=":name" handler={BkShow}/>
    </Route>
    <Route path="slide_show">
      <Route path=":name" handler={BkShowSlidShow}/>
    </Route>
  </Route>
);
