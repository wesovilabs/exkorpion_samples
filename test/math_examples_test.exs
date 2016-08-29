defmodule ExkorpionSamples.MathExamplesTest do
    use Exkorpion

    def sum a, b do
        a + b
    end

    def subs a, b do
      a - b
    end

    scenario "testing sum operation works as expected" do

        it "sum positive numbers works as expected" do
            %{
                given: fn -> %{a: 1, b: 2} end,

                when: fn ctx ->
                    %{c: ctx.a + ctx.b}
                end,
                then: fn ctx ->
                    assert ctx.c === 3
                end
            }
        end

        it "sum negative numbers and it should work as expected" do
          %{
            given: fn  ->
                %{a: -1, b: -2}
            end,
            when: fn ctx ->
                %{c: sum(ctx.a, ctx.b)}
            end,
            then: fn ctx ->
                assert ctx.c === -3
            end
          }
        end

        it "does multiple operations depending on vairable input" do

          %{
              with: fn ->
                [
                    %{param1: 2, param2: 3, result: 5, op: fn a,b -> sum(a,b) end},
                    %{param1: 3, param2: -2, result: 5, op: fn a,b -> subs(a,b) end}
                ]
              end,
              given: fn ctx ->
                %{a: ctx.param1, b: ctx.param2}
              end,
              when: fn ctx ->
                %{c: ctx.op.(ctx.a, ctx.b)}
              end,
              then: fn ctx ->
                assert ctx.c === ctx.result
              end
          }
        end


    end

end