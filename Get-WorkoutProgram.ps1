function Get-WorkoutProgram {
    param()
    @(
        [pscustomobject]@{
            Name     = "StrengthTraining"
            Trainers = @(
                [pscustomobject]@{
                    Name            = "Alex";
                    Specialization  = "Strength Conditioning";
                    ExperienceYears = 5;
                    Certifications  = @("CPT", "CSCS")
                },
                [pscustomobject]@{
                    Name            = "Jordan";
                    Specialization  = "Functional Training";
                    ExperienceYears = 3;
                    Certifications  = @("CPT", "FMS Level 1")
                }
            )
            Routines = @(
                [pscustomobject]@{
                    Day       = "Monday"; 
                    Exercises = @(
                        [pscustomobject]@{
                            Name    = "Squats";
                            Sets    = 5;
                            Reps    = 10;
                            Notes   = "Focus on form and depth";
                            Details = @{
                                Equipment     = "Barbell";
                                TechniqueTips = "Keep feet shoulder-width apart and drive through the heels."
                            }
                        },
                        [pscustomobject]@{
                            Name    = "Bench Press";
                            Sets    = 4;
                            Reps    = 8;
                            Notes   = "Maintain a slow and controlled motion";
                            Details = @{
                                Equipment     = "Bench, Barbell";
                                TechniqueTips = "Align wrists and elbows, lower bar to mid-chest."
                            }
                        }
                    )
                }
                [pscustomobject]@{
                    Day       = "Wednesday"; 
                    Exercises = @(
                        [pscustomobject]@{
                            Name    = "Deadlift";
                            Sets    = 5;
                            Reps    = 5;
                            Notes   = "Keep your back straight";
                            Details = @{
                                Equipment     = "Barbell";
                                TechniqueTips = "Keep the bar close to your body, lift with your legs."
                            }
                        },
                        [pscustomobject]@{
                            Name    = "Pull-ups";
                            Sets    = 3;
                            Reps    = "Max";
                            Notes   = "Full range of motion";
                            Details = @{
                                Equipment     = "Pull-up Bar";
                                TechniqueTips = "Avoid swinging, pull up until chin is above the bar."
                            }
                        }
                    )
                }
            )
        }
        [pscustomobject]@{
            Name     = "CardioBlast"
            Trainers = @(
                [pscustomobject]@{
                    Name            = "Mia";
                    Specialization  = "Cardio Training";
                    ExperienceYears = 4;
                    Certifications  = @("ACE", "NASM")
                }
            )
            Routines = @(
                [pscustomobject]@{
                    Day       = "Tuesday";
                    Exercises = @(
                        [pscustomobject]@{
                            Name     = "Treadmill Sprint";
                            Duration = "30min";
                            Notes    = "High-intensity interval training";
                        },
                        [pscustomobject]@{
                            Name     = "Cycling";
                            Duration = "45min";
                            Notes    = "Steady state cycling";
                        }
                    )
                }
            )
        }
        [pscustomobject]@{
            Name     = "YogaFlex"
            Trainers = @(
                [pscustomobject]@{
                    Name            = "Ethan";
                    Specialization  = "Yoga and Flexibility";
                    ExperienceYears = 6;
                    Certifications  = @("RYT-200", "C-IAYT")
                }
            )
            Routines = @(
                [pscustomobject]@{
                    Day       = "Friday";
                    Exercises = @(
                        [pscustomobject]@{
                            Name     = "Vinyasa Flow";
                            Duration = "60min";
                            Notes    = "Fluid movement and breath synchronization";
                        },
                        [pscustomobject]@{
                            Name     = "Hatha Yoga";
                            Duration = "60min";
                            Notes    = "Focus on alignment and mindfulness";
                        }
                    )
                }
            )
        }
    )
}