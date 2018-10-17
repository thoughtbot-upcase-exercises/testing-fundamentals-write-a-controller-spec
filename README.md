# Rails Testing Exercises / Testing Fundamentals Write A Controller Spec

Hey there! We're [thoughtbot](https://thoughtbot.com), a design and
development consultancy that brings your digital product ideas to life.
We also love to share what we learn.

This coding exercise comes from [Upcase](https://thoughtbot.com/upcase),
the online learning platform we run. It's part of the
[Rails Testing Exercises](https://thoughtbot.com/upcase/rails-testing-exercises) course and is just one small sample of all
the great material available on Upcase, so be sure to visit and check out the rest.

## Exercise Intro

Integration tests are great for catching bugs, but they can be cumbersome for testing simple `if`/`else` branches and little details. For those, you'll want to use "unit tests," tests which exercise a single class working by itself.

When writing these unit tests, you'll want to use "test doubles:" test objects which stand in for the objects you'd use in a real application.

In this example, you'll write a unit test to make sure the `create` action for `PeopleController` works as expected based on the return value of `save`.

When writing controller specs, you'll use the `get`, `post`, `put`, and `delete` methods to exercise actions in your controller:

``` ruby
# Run the `index` action for the current controller.
# `params[:user_id]` will be `"6"`.
get :index, user_id: "6"
```

You can use matchers from [rspec-rails](http://rubydoc.info/gems/rspec-rails/file/README.md) to verify the responses rendered by your controllers:

``` ruby
# Expect: `redirect_to root_path`
expect(response).to redirect_to(root_path)

# Expect: `render :new`
expect(response).to render_template(:new)
```

Once you get this test working, try using test doubles so that you don't depend on the actual validations in `Person`.

Here are some examples of stubs:

``` ruby
allow(Post).to receive(:new).and_return(fake_post)
allow(fake_post).to receive(:update_attributes).
  with(title: "hello").
  and_return(true)
```

You can see more examples of stubbing in the [rspec-mocks documentation](http://rubydoc.info/gems/rspec-mocks).

## Instructions

To start, you'll want to clone and run the setup script for the repo

    git clone git@github.com:thoughtbot-upcase-exercises/testing-fundamentals-write-a-controller-spec.git
    cd testing-fundamentals-write-a-controller-spec
    bin/setup

1. Edit `spec/controllers/people_controller_spec.rb`.
2. Write tests for the success and failure cases.
3. Make sure your tests are passing by running `rake`.

## Featured Solution

Check out the [featured solution branch](https://github.com/thoughtbot-upcase-exercises/testing-fundamentals-write-a-controller-spec/compare/featured-solution#toc) to
see the approach we recommend for this exercise.

## Forum Discussion

If you find yourself stuck, be sure to check out the associated
[Upcase Forum discussion](https://forum.upcase.com/t/testing-fundamentals-write-a-controller-spec/4569)
for this exercise to see what other folks have said.

## Next Steps

When you've finished the exercise, head on back to the
[Rails Testing Exercises](https://thoughtbot.com/upcase/rails-testing-exercises) course to find the next exercise,
or explore any of the other great content on
[Upcase](https://thoughtbot.com/upcase).

## License

testing-fundamentals-write-a-controller-spec is Copyright © 2015-2018 thoughtbot, inc. It is free software,
and may be redistributed under the terms specified in the
[LICENSE](/LICENSE.md) file.

## Credits

![thoughtbot](https://presskit.thoughtbot.com/assets/images/logo.svg)

This exercise is maintained and funded by
[thoughtbot, inc](http://thoughtbot.com/community).

The names and logos for Upcase and thoughtbot are registered trademarks of
thoughtbot, inc.
