class EmailerForm < ApplicationRecord
  validates :name,
            :proj_url,
            presence: { message: "Please complete all fields!" }

  validates :proj_repo,
            presence: { message: "Please complete all fields!" },
            uniqueness: { message: "This repositiry belongs to someone else" }

  validates :email,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                      message: "Email format invalid" },
            presence: { message: "Please complete all fields!" },
            uniqueness: { message: "Email address has already been used" }

  validates :oop,
            :modular,
            :full_stack,
            :testing,
            :db,
            :debugging,
            :problem_solving,
            :js,
            :html,
            :css,
            :teamwork,
            :self_motivation,
            :communication,
            :energy_level,
            :aptitude,
            numericality: { only_integer: true },
            presence: { message: "Please complete all fields!" }

  validates :garbage_blocker,
            presence: false

end
