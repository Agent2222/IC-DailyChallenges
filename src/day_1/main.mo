import Debug "mo:base/Debug";
actor {
    public func greet(name : Text) : async Text {
        return "Hello, " # name # "!";
    };
    // Challenge 1
    public func add(n: Nat,m: Nat) : async Nat {
        return n+m;
    };
    // Challenge 2
    public func square(n: Nat) : async Nat {
        return let area : Nat = n * n;
    };
    // Challenge 3
    public func days_to_second(n: Nat) : async Nat {
        return n * 86400 : Nat;
    };
    // Challenge 4 (UNCLEAR WHY INCREMENT VALUE DOESNT STAY)
    var counter : Nat = 0;
    public func increment_counter(n: Nat) : async Nat {
        return counter + n;
    };
    public func clear_counter() : async () {
      var counter = 0 : Nat;
    };
    // Challenge 5
    public func divide(n: Nat, m: Nat) : async Bool {
        if (n%m <= 0) {
            return(true);
        } else {
            return(false);
        }
    };
    // Challenge 6
    public func is_even(n: Nat) : async Bool {
        if (n%2 == 0) {
            return(true);
        } else {
            return(false);
        }
    };
    // Challenge 7
    let array : [Nat] = [5,10,17,108];
    public func sum_of_array(n: [Nat]) : async Nat {
        var newVal : Nat = 0;
        for (value in array.vals()) {
            Debug.print(debug_show(value));
            newVal := value + newVal;
        };
        return(newVal)
    }
    // Challenge 8
    public func maximum(nums : [Nat]) : async Nat {
        if (nums.size() != 0) {
            var max = nums[0];
            for (num in nums.vals()){
                if (num > max) {
                    max := num;
                };
            };
            return max;
        };
        return 0;
    };
    // Challenge 9
    public func remove_from_array(nums : [Nat], n : Nat) : async [Nat] {
        return Array.filter(nums, func (_n : Nat) : Bool {
            return _n != n;
        });
    };
    // Challenge 10
    public func selection_sort(nums : [Nat]) : async [Nat] {
        return Array.sort(nums, Nat.compare);
    };
};
