import 'package:qbankuserapp/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TopicWiseQuestions extends StatefulWidget {
  TopicWiseQuestions({
    required this.localstorage,
  });
  final SharedPreferences localstorage;

  @override
  _TopicWiseQuestionsState createState() => _TopicWiseQuestionsState();
}

class _TopicWiseQuestionsState extends State<TopicWiseQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: kThemeColor,
        ),
        centerTitle: true,
        title: Text(
          "Topic-Wise Questions",
          style: TextStyle(
              fontFamily: 'OurFont', fontSize: 22, color: kThemeColor),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              child: TextField(
                style: TextStyle(
                  height: 1.2,
                  color: Colors.black,
                  fontSize: 18.0,
                ),
                decoration: kSearchInputDecoration,
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
          ),
          (widget.localstorage.getString('mainYear') == '1st Year')
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: SubjectContainer(subjectName: 'Anatomy'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopicScreen(
                              subject: 'Anatomy',
                            ),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: SubjectContainer(subjectName: 'Physiology'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopicScreen(
                              subject: 'Physiology',
                            ),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: SubjectContainer(subjectName: 'Biochemistry'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopicScreen(
                              subject: 'Biochemistry',
                            ),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: SubjectContainer(subjectName: 'Biomechanics'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopicScreen(
                              subject: 'Biomechanics',
                            ),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: SubjectContainer(subjectName: 'Psychology'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopicScreen(
                              subject: 'Psychology',
                            ),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: SubjectContainer(subjectName: 'Sociology'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopicScreen(
                              subject: 'Sociology',
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                )
              : (widget.localstorage.getString('mainYear') == '2nd Year')
                  ? Column(
                      children: [
                        InkWell(
                          child: SubjectContainer(subjectName: 'Pathology'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TopicScreen(
                                  subject: 'Pathology',
                                ),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: SubjectContainer(subjectName: 'Microbiology'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TopicScreen(
                                  subject: 'Microbiology',
                                ),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child:
                              SubjectContainer(subjectName: 'Exercisetherapy'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TopicScreen(
                                  subject: 'Exercisetherapy',
                                ),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child:
                              SubjectContainer(subjectName: 'Electrotherapy'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TopicScreen(
                                  subject: 'Electrotherapy',
                                ),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: SubjectContainer(subjectName: 'Pharmacology'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TopicScreen(
                                  subject: 'Pharmacology',
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    )
                  : (widget.localstorage.getString('mainYear') == '3rd Year')
                      ? Column(
                          children: [
                            InkWell(
                              child: SubjectContainer(
                                  subjectName: 'General Medicine'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopicScreen(
                                      subject: 'General Medicine',
                                    ),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              child: SubjectContainer(
                                  subjectName: 'General Surgery'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopicScreen(
                                      subject: 'General Surgery',
                                    ),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              child: SubjectContainer(
                                  subjectName: 'Orthopaedics & Traumatology'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopicScreen(
                                      subject: 'Orthopaedics & Traumatology',
                                    ),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              child: SubjectContainer(
                                  subjectName:
                                      'Orthopaedics & Sports Physiotherapy'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopicScreen(
                                      subject:
                                          'Orthopaedics & Sports Physiotherapy',
                                    ),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              child: SubjectContainer(
                                  subjectName: 'Cardio Respiratory'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopicScreen(
                                      subject: 'Cardio Respiratory',
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            InkWell(
                              child: SubjectContainer(
                                  subjectName: 'Neurology and Neurosurgery'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopicScreen(
                                      subject: 'Neurology and Neurosurgery',
                                    ),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              child: SubjectContainer(
                                  subjectName: 'Neurophysiotherapy'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopicScreen(
                                      subject: 'Neurophysiotherapy',
                                    ),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              child: SubjectContainer(
                                  subjectName: 'Community Medicine'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopicScreen(
                                      subject: 'Community Medicine',
                                    ),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              child: SubjectContainer(
                                  subjectName:
                                      'Community Based Rehabilitation'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopicScreen(
                                      subject: 'Community Based Rehabilitation',
                                    ),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              child: SubjectContainer(
                                  subjectName: 'Research Methodology'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopicScreen(
                                      subject: 'Research Methodology',
                                    ),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              child: SubjectContainer(
                                  subjectName: 'Biostatistics'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopicScreen(
                                      subject: 'Biostatics',
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
        ],
      ),
    );
  }
}

class SubjectContainer extends StatefulWidget {
  final String subjectName;
  final double? height;
  SubjectContainer({
    required this.subjectName,
    this.height,
  });

  @override
  _SubjectContainerState createState() => _SubjectContainerState();
}

class _SubjectContainerState extends State<SubjectContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 23,
            ),
            child: Text(
              widget.subjectName,
              style: TextStyle(
                fontFamily: 'OurFont',
                fontSize: 22,
                color: kThemeColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopicScreen extends StatefulWidget {
  final String subject;

  TopicScreen({
    required this.subject,
  });

  @override
  _TopicScreenState createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: kThemeColor,
        ),
        centerTitle: true,
        title: Text(
          widget.subject,
          style: TextStyle(
              fontFamily: 'OurFont', fontSize: 22, color: kThemeColor),
        ),
      ),
      body: (widget.subject == 'Anatomy')
          ? ListView(
              children: [
                SubjectContainer(subjectName: 'Abdomen'),
                SubjectContainer(subjectName: 'Connective Tissues'),
                SubjectContainer(subjectName: 'Upper Extremity'),
                SubjectContainer(subjectName: 'Lower Extremity'),
                SubjectContainer(subjectName: 'Trunk & Pelvis'),
                SubjectContainer(subjectName: 'Head & Neck'),
                SubjectContainer(subjectName: 'Cardiovascular System'),
                SubjectContainer(subjectName: 'Respiratory System'),
                SubjectContainer(subjectName: 'Central Nervous System'),
                SubjectContainer(subjectName: 'Peripheral Nervous System'),
                SubjectContainer(subjectName: 'Cranial Nerves'),
              ],
            )
          : (widget.subject == 'Physiology')
              ? ListView(
                  children: [
                    SubjectContainer(subjectName: 'General Physiology'),
                    SubjectContainer(subjectName: 'Blood and Body Fluids'),
                    SubjectContainer(subjectName: 'Muscle Physiology'),
                    SubjectContainer(subjectName: 'Digestive System'),
                    SubjectContainer(subjectName: 'Renal Physiology and Skin'),
                    SubjectContainer(subjectName: 'Endocrinology'),
                    SubjectContainer(subjectName: 'Reproductive System'),
                    SubjectContainer(subjectName: 'Cardiovascular System'),
                    SubjectContainer(
                      subjectName:
                          'Respiratory System and Environmental Physiology',
                      height: 95,
                    ),
                    SubjectContainer(subjectName: 'Nervous System'),
                    SubjectContainer(subjectName: 'Special Senses'),
                  ],
                )
              : (widget.subject == 'Biochemistry')
                  ? ListView(
                      children: [
                        SubjectContainer(subjectName: 'Nutrition'),
                        SubjectContainer(subjectName: 'Carbohydrate'),
                        SubjectContainer(subjectName: 'Lipid'),
                        SubjectContainer(subjectName: 'Amino Acid and Protein'),
                        SubjectContainer(subjectName: 'Enzymes'),
                        SubjectContainer(subjectName: 'Nuclic Acid Chemistry'),
                        SubjectContainer(
                            subjectName: 'Digestion and Absorption'),
                        SubjectContainer(subjectName: 'Vitamins'),
                        SubjectContainer(subjectName: 'Mineral Metabolism'),
                        SubjectContainer(subjectName: 'Cell Biology'),
                        SubjectContainer(subjectName: 'Muscle Contraction'),
                        SubjectContainer(
                            subjectName: 'Connective Tissue, Bone'),
                        SubjectContainer(subjectName: 'Hormone Action'),
                        SubjectContainer(subjectName: 'Acid Base Balance'),
                        SubjectContainer(subjectName: 'Water Balance'),
                        SubjectContainer(subjectName: 'Electrolyte Balance'),
                        SubjectContainer(subjectName: 'Clinical Biochemistry'),
                      ],
                    )
                  : (widget.subject == 'Biomechanics')
                      ? ListView(
                          children: [
                            SubjectContainer(
                              subjectName: 'Joint Structure and Function',
                              height: 95,
                            ),
                            SubjectContainer(
                              subjectName: 'Axial Skeletal Joint Complexes',
                              height: 95,
                            ),
                            SubjectContainer(
                              subjectName: 'Upper Extremity Joint Complexes',
                              height: 95,
                            ),
                            SubjectContainer(subjectName: 'Hip Joint'),
                            SubjectContainer(
                                subjectName: 'Integrated Function'),
                          ],
                        )
                      : (widget.subject == 'Psychology')
                          ? ListView(
                              children: [
                                SubjectContainer(
                                  subjectName:
                                      'Branches, Methods & Relations to Physiotherapy',
                                  height: 95,
                                ),
                                SubjectContainer(
                                    subjectName: 'Growth & Development'),
                                SubjectContainer(
                                  subjectName:
                                      'Sensation, Attention & Perception',
                                  height: 95,
                                ),
                                SubjectContainer(subjectName: 'Motivation'),
                                SubjectContainer(
                                    subjectName: 'Frustration & Conflict'),
                                SubjectContainer(subjectName: 'Emotions'),
                                SubjectContainer(subjectName: 'Intelligence'),
                                SubjectContainer(subjectName: 'Thinking'),
                                SubjectContainer(subjectName: 'Learning'),
                                SubjectContainer(subjectName: 'Personality'),
                                SubjectContainer(
                                    subjectName: 'Leadership & Attittude'),
                              ],
                            )
                          : (widget.subject == 'Sociology')
                              ? ListView(
                                  children: [
                                    SubjectContainer(
                                      subjectName:
                                          'Investigative Methods & Relation to other branches',
                                      height: 95,
                                    ),
                                    SubjectContainer(
                                      subjectName:
                                          'Social Factors in Health and Disease',
                                      height: 95,
                                    ),
                                    SubjectContainer(
                                      subjectName:
                                          'Socialization and Social Group',
                                      height: 95,
                                    ),
                                    SubjectContainer(subjectName: 'Family'),
                                    SubjectContainer(subjectName: 'Community'),
                                    SubjectContainer(
                                        subjectName: 'Culture and Health'),
                                    SubjectContainer(
                                        subjectName: 'Social Changes'),
                                    SubjectContainer(
                                      subjectName:
                                          'Social Problems & Social Security',
                                      height: 95,
                                    ),
                                    SubjectContainer(
                                        subjectName: 'Medical Social Worker'),
                                  ],
                                )
                              : (widget.subject == 'Pathology')
                                  ? ListView(
                                      children: [
                                        SubjectContainer(
                                            subjectName: 'Cell Injury'),
                                        SubjectContainer(
                                            subjectName:
                                                'Inflammation and Repair'),
                                        SubjectContainer(
                                            subjectName: 'Immunopathology'),
                                        SubjectContainer(
                                            subjectName: 'Infectious Diseases'),
                                        SubjectContainer(
                                            subjectName:
                                                'Circulatory Disturbances'),
                                        SubjectContainer(
                                          subjectName:
                                              'Growth Disturbances and Neoplasia',
                                          height: 95,
                                        ),
                                        SubjectContainer(
                                            subjectName:
                                                'Nutritional Disorder'),
                                        SubjectContainer(
                                            subjectName: 'Genetic Disorder'),
                                        SubjectContainer(
                                            subjectName: 'Hematology'),
                                        SubjectContainer(
                                            subjectName: 'Respiratory System'),
                                        SubjectContainer(
                                            subjectName:
                                                'Cardiovascular Pathology'),
                                        SubjectContainer(
                                            subjectName: 'Alimentary Tract'),
                                        SubjectContainer(
                                            subjectName:
                                                'Hepato-Biliary Pathology'),
                                        SubjectContainer(
                                            subjectName: 'Lymphatic System'),
                                        SubjectContainer(
                                            subjectName:
                                                'Musculoskeletal System'),
                                        SubjectContainer(
                                            subjectName: 'Endocrine Pathology'),
                                        SubjectContainer(
                                            subjectName: 'Neuropathology'),
                                        SubjectContainer(
                                            subjectName: 'Dermatopathology'),
                                      ],
                                    )
                                  : (widget.subject == 'Microbiology')
                                      ? ListView(
                                          children: [
                                            SubjectContainer(
                                                subjectName:
                                                    'General Microbiology'),
                                            SubjectContainer(
                                                subjectName: 'Immunology'),
                                            SubjectContainer(
                                                subjectName: 'Bacteriology'),
                                            SubjectContainer(
                                                subjectName:
                                                    'General Virology'),
                                            SubjectContainer(
                                                subjectName: 'Mycology'),
                                            SubjectContainer(
                                                subjectName:
                                                    'Clinical Microbiology'),
                                          ],
                                        )
                                      : (widget.subject == 'Exercisetherapy')
                                          ? ListView(
                                              children: [
                                                SubjectContainer(
                                                  subjectName:
                                                      'Aim, Techniques & Assessment',
                                                  height: 95,
                                                ),
                                                SubjectContainer(
                                                    subjectName:
                                                        'Methods of Testing'),
                                                SubjectContainer(
                                                    subjectName: 'Relaxation'),
                                                SubjectContainer(
                                                  subjectName:
                                                      'Active & Passive Movements',
                                                  height: 95,
                                                ),
                                                SubjectContainer(
                                                    subjectName: 'PNF'),
                                                SubjectContainer(
                                                    subjectName:
                                                        'Suspension Therapy'),
                                                SubjectContainer(
                                                  subjectName:
                                                      'Functional Re-Education',
                                                  height: 95,
                                                ),
                                                SubjectContainer(
                                                    subjectName:
                                                        'Aerobic Exercises'),
                                                SubjectContainer(
                                                    subjectName: 'Stretching'),
                                                SubjectContainer(
                                                  subjectName:
                                                      'Manual Therapy & Mobilization',
                                                  height: 95,
                                                ),
                                                SubjectContainer(
                                                    subjectName: 'Balance'),
                                                SubjectContainer(
                                                    subjectName:
                                                        'Co-ordination'),
                                                SubjectContainer(
                                                    subjectName: 'Posture'),
                                                SubjectContainer(
                                                    subjectName:
                                                        'Walking Aids'),
                                                SubjectContainer(
                                                    subjectName: 'Massage'),
                                                SubjectContainer(
                                                  subjectName:
                                                      'Individual & Group Exercise',
                                                  height: 95,
                                                ),
                                                SubjectContainer(
                                                    subjectName:
                                                        'Hydrotherapy'),
                                                SubjectContainer(
                                                    subjectName:
                                                        'Introduction to Yoga'),
                                              ],
                                            )
                                          : (widget.subject == 'Electrotherapy')
                                              ? ListView(
                                                  children: [
                                                    SubjectContainer(
                                                        subjectName:
                                                            'Introductory Physics'),
                                                    SubjectContainer(
                                                        subjectName:
                                                            'Low Frequency Current'),
                                                    SubjectContainer(
                                                        subjectName:
                                                            'Electro Diagnosis'),
                                                    SubjectContainer(
                                                      subjectName:
                                                          'Medium Frequency Currents',
                                                      height: 95,
                                                    ),
                                                    SubjectContainer(
                                                        subjectName:
                                                            'High Frequency Currents'),
                                                    SubjectContainer(
                                                      subjectName:
                                                          'Superficial Heating Modalities',
                                                      height: 95,
                                                    ),
                                                  ],
                                                )
                                              : (widget.subject ==
                                                      'Pharmacology')
                                                  ? ListView(
                                                      children: [
                                                        SubjectContainer(
                                                            subjectName:
                                                                'General Pharmacology'),
                                                        SubjectContainer(
                                                          subjectName:
                                                              'Autonomic Nervous System',
                                                          height: 95,
                                                        ),
                                                        SubjectContainer(
                                                          subjectName:
                                                              'Cardiovascular Pharmacology',
                                                          height: 95,
                                                        ),
                                                        SubjectContainer(
                                                            subjectName:
                                                                'Neuropharmacology'),
                                                        SubjectContainer(
                                                            subjectName:
                                                                'Disorders of Movement'),
                                                        SubjectContainer(
                                                          subjectName:
                                                              'Inflammatory/Immune Response',
                                                          height: 95,
                                                        ),
                                                        SubjectContainer(
                                                            subjectName:
                                                                'Digestion and Metabolism'),
                                                        SubjectContainer(
                                                            subjectName:
                                                                'Geriatrics'),
                                                      ],
                                                    )
                                                  : (widget.subject ==
                                                          'General Medicine')
                                                      ? ListView(
                                                          children: [
                                                            SubjectContainer(
                                                              subjectName:
                                                                  'Infection',
                                                            ),
                                                            SubjectContainer(
                                                                subjectName:
                                                                    'Poisoning'),
                                                            SubjectContainer(
                                                                subjectName:
                                                                    'Food and Nutrition'),
                                                            SubjectContainer(
                                                                subjectName:
                                                                    'Endocrine Diseases'),
                                                            SubjectContainer(
                                                                subjectName:
                                                                    'Diseases of Blood'),
                                                            SubjectContainer(
                                                                subjectName:
                                                                    'Diseases of Digestive system'),
                                                            SubjectContainer(
                                                                subjectName:
                                                                    'Cardiovascular Diseases'),
                                                            SubjectContainer(
                                                                subjectName:
                                                                    'Respiratory Diseases'),
                                                            SubjectContainer(
                                                                subjectName:
                                                                    'Diseases of Skin'),
                                                            SubjectContainer(
                                                                subjectName:
                                                                    'Pediatrics'),
                                                            SubjectContainer(
                                                                subjectName:
                                                                    'Psychiatric Disorder'),
                                                          ],
                                                        )
                                                      : (widget.subject ==
                                                              'General Surgery')
                                                          ? ListView(
                                                              children: [
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Electrolyte/Acid base Disturbance'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Reasons for Surgery'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Thoracic trauma situations'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Surgical oncology'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Disorders of Chestwall,Lungs,Mediastinum'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Disorders of heart'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Thoracic Surgeries'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Diseases of arteries and veins'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Common operations'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Burn'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Women health'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'ENT'),
                                                                SubjectContainer(
                                                                    subjectName:
                                                                        'Ophthalmology'),
                                                              ],
                                                            )
                                                          : (widget.subject ==
                                                                  'Orthopaedics & Traumatology')
                                                              ? ListView(
                                                                  children: [
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Introduction'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Traumatology'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Fractures and dislocations of upper limb'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Fracture of spine'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Fractures and dislocations of lower limb'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Soft tissue injuries'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Amputations'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Hand injuries'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Traumatic spinal cord injuries'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Deformities'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Diseases of Bones and joints'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Inflammatory and degenerative conditions'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Syndromes'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Neuromuscular disorders'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Cervical and Lumbar pathology'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Orthopaedic Surgeries'),
                                                                    SubjectContainer(
                                                                        subjectName:
                                                                            'Regional conditions'),
                                                                  ],
                                                                )
                                                              : (widget.subject ==
                                                                      'Orthopaedics & Sports Physiotherapy')
                                                                  ? ListView(
                                                                      children: [
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'PT Assessments'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Fractures'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Specific Fractures and dislocations'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Selection and application'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Principles and Manualtherapy'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Degenerative and inflammatory conditions'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Infective conditions'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Postural abnormalities of spine'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Deformities'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Cerebral palsy'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Poliomyelitis'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Leprosy'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Amputations'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Spinal conditions'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Effects of Spinal Traction'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Osteoporosis'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Orthopaedic Surgeries'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Shoulder Joint'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Elbow and Forearm'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Wrist and hand'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'HIP'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'KNEE'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Ankle and Foot'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Introductions of Bioengineering'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'Sports Physiotherapy'),
                                                                        SubjectContainer(
                                                                            subjectName:
                                                                                'YOGA'),
                                                                      ],
                                                                    )
                                                                  : (widget.subject ==
                                                                          'Cardio Respiratory')
                                                                      ? ListView(
                                                                          children: [
                                                                            SubjectContainer(subjectName: 'Anatomical & Physiological difference between adult and pediatric lung'),
                                                                            SubjectContainer(subjectName: 'Beside assessment of the patient'),
                                                                            SubjectContainer(subjectName: 'Investigation and test'),
                                                                            SubjectContainer(subjectName: 'PT technique to increase lung Volume'),
                                                                            SubjectContainer(subjectName: 'PT technique to decrease the work of breathing'),
                                                                            SubjectContainer(subjectName: 'PT technique to clear the secretions'),
                                                                            SubjectContainer(subjectName: 'Drug therapy'),
                                                                            SubjectContainer(subjectName: 'Management of wound ulcers'),
                                                                            SubjectContainer(subjectName: 'Physiotherapy in dermatology'),
                                                                            SubjectContainer(subjectName: 'Neonatal & pediatric PT'),
                                                                            SubjectContainer(subjectName: 'PT in obstetrics lung conditions'),
                                                                            SubjectContainer(subjectName: 'PT in restrictive lung conditions'),
                                                                            SubjectContainer(subjectName: 'Management of Breathlessness'),
                                                                            SubjectContainer(subjectName: 'Pulmonary Rehabilitation'),
                                                                            SubjectContainer(subjectName: 'PT following lung surgeries'),
                                                                            SubjectContainer(subjectName: 'Respiratory failure'),
                                                                            SubjectContainer(subjectName: 'Introduction to ICU'),
                                                                            SubjectContainer(subjectName: 'Burn management'),
                                                                            SubjectContainer(subjectName: 'PT management following cardiac surgery'),
                                                                            SubjectContainer(subjectName: 'Cardiac rehabilitation'),
                                                                            SubjectContainer(subjectName: 'PT Management following PVD'),
                                                                            SubjectContainer(subjectName: 'Abdominal surgery'),
                                                                            SubjectContainer(subjectName: 'Management of Amputation following diabetes, PVD'),
                                                                            SubjectContainer(subjectName: 'PT intervention in management of medical, surgical, oncology cases'),
                                                                            SubjectContainer(subjectName: 'Home program and education of family members in patient care'),
                                                                            SubjectContainer(subjectName: 'Physiotherapy in obstetrics'),
                                                                            SubjectContainer(subjectName: 'Treatment, responses to exercise and implications of pt in some diseases conditions'),
                                                                            SubjectContainer(subjectName: 'Health fitness and promotion'),
                                                                            SubjectContainer(subjectName: 'Applied yoga in cardio-respiratory conditions'),
                                                                          ],
                                                                        )
                                                                      : (widget.subject ==
                                                                              'Neurology and Neurosurgery')
                                                                          ? ListView(
                                                                              children: [
                                                                                SubjectContainer(subjectName: 'Anatomy in Neurology'),
                                                                                SubjectContainer(subjectName: 'Neurological involvements in lesion'),
                                                                                SubjectContainer(subjectName: 'Neurological assessment and investigation'),
                                                                                SubjectContainer(subjectName: 'Neuro-Ophthalmology'),
                                                                                SubjectContainer(subjectName: 'Deafness, vertigo and imbalance'),
                                                                                SubjectContainer(subjectName: 'Lower cranial nerve paralysis'),
                                                                                SubjectContainer(subjectName: 'Cerebro-vascular diseases'),
                                                                                SubjectContainer(subjectName: 'Head injury'),
                                                                                SubjectContainer(subjectName: 'Higher cortical, neuropsychological, neuro-behavioural disorder'),
                                                                                SubjectContainer(subjectName: 'Movement disorders'),
                                                                                SubjectContainer(subjectName: 'Cerebellar and coordination disorders'),
                                                                                SubjectContainer(subjectName: 'Spinal cord disorders'),
                                                                                SubjectContainer(subjectName: 'Brain and spinal tumors'),
                                                                                SubjectContainer(subjectName: 'Motor neuron diseases'),
                                                                                SubjectContainer(subjectName: 'Multiple sclerosis'),
                                                                                SubjectContainer(subjectName: 'Disorders of neuromuscular junction'),
                                                                                SubjectContainer(subjectName: 'Muscle diseases'),
                                                                                SubjectContainer(subjectName: 'Polyneuropathy'),
                                                                                SubjectContainer(subjectName: 'Focal peripheral neuropathy'),
                                                                                SubjectContainer(subjectName: 'Pediatric neurology'),
                                                                                SubjectContainer(subjectName: 'Toxic, metabolic and environmental disorders'),
                                                                                SubjectContainer(subjectName: 'Neurosurgery'),
                                                                              ],
                                                                            )
                                                                          : (widget.subject == 'Neurophysiotherapy')
                                                                              ? ListView(
                                                                                  children: [
                                                                                    SubjectContainer(subjectName: 'Neurological assessment'),
                                                                                    SubjectContainer(subjectName: 'Neurophysiological technique'),
                                                                                    SubjectContainer(subjectName: 'Pediatric neurology'),
                                                                                    SubjectContainer(subjectName: 'Evaluation and management:- Brain and spinal cord disorders'),
                                                                                    SubjectContainer(subjectName: 'Evaluation and management:- Cerebellar, spinal cord and muscle disorders'),
                                                                                    SubjectContainer(subjectName: 'Evaluation and management:- Peripheral nerve injuries and disorders'),
                                                                                    SubjectContainer(subjectName: 'Assessment and management of neurological gaits'),
                                                                                    SubjectContainer(subjectName: 'Pre-post surgical treatment and assessment'),
                                                                                    SubjectContainer(subjectName: 'Applied Yoga in neurological conditions'),
                                                                                  ],
                                                                                )
                                                                              : (widget.subject == 'Community Medicine')
                                                                                  ? ListView(
                                                                                      children: [
                                                                                        SubjectContainer(subjectName: 'Health & Diseases'),
                                                                                        SubjectContainer(subjectName: 'Epidermology:- Definition,principle & methods'),
                                                                                        SubjectContainer(subjectName: 'Epidermology of communicable diseases'),
                                                                                        SubjectContainer(subjectName: 'Public health administration'),
                                                                                        SubjectContainer(subjectName: 'Health programmes in India'),
                                                                                        SubjectContainer(subjectName: 'Demography & family planning'),
                                                                                        SubjectContainer(subjectName: 'Preventive medicine in obstetrics,pediatrics and geriatrics'),
                                                                                        SubjectContainer(subjectName: 'Nutrition & Health'),
                                                                                        SubjectContainer(subjectName: 'Environment and health'),
                                                                                        SubjectContainer(subjectName: 'Hospital waste management'),
                                                                                        SubjectContainer(subjectName: 'Disaster management'),
                                                                                        SubjectContainer(subjectName: 'Occupational health'),
                                                                                        SubjectContainer(subjectName: 'Mental health'),
                                                                                        SubjectContainer(subjectName: 'Health education'),
                                                                                      ],
                                                                                    )
                                                                                  : (widget.subject == 'Community Based Rehabilitation')
                                                                                      ? ListView(
                                                                                          children: [
                                                                                            SubjectContainer(subjectName: 'Rehabilitation'),
                                                                                            SubjectContainer(subjectName: 'Community'),
                                                                                            SubjectContainer(subjectName: 'Introduction of community based rehabilitation'),
                                                                                            SubjectContainer(subjectName: 'Principle of community based rehabilitation'),
                                                                                            SubjectContainer(subjectName: 'Planning and management of CBR program'),
                                                                                            SubjectContainer(subjectName: 'Disability'),
                                                                                            SubjectContainer(subjectName: 'Disability evaluation'),
                                                                                            SubjectContainer(subjectName: 'Role of government in CBR'),
                                                                                            SubjectContainer(subjectName: 'Role of social work in CBR'),
                                                                                            SubjectContainer(subjectName: 'Role of voluntary organisations in CBR'),
                                                                                            SubjectContainer(subjectName: 'National district level rehabilitation program'),
                                                                                            SubjectContainer(subjectName: 'Role of physiotherapy in CBR'),
                                                                                            SubjectContainer(subjectName: 'Screening and rehabilitation of paediatric disorders in the community'),
                                                                                            SubjectContainer(subjectName: 'Extension services and mobile units'),
                                                                                            SubjectContainer(subjectName: 'Vocational training in rehabilitation'),
                                                                                            SubjectContainer(subjectName: 'Geriatrics'),
                                                                                            SubjectContainer(subjectName: 'Industrial health and Ergonomics'),
                                                                                          ],
                                                                                        )
                                                                                      : (widget.subject == 'Research Methodology')
                                                                                          ? ListView(
                                                                                              children: [
                                                                                                SubjectContainer(subjectName: 'Introduction to Research Methodology'),
                                                                                                SubjectContainer(subjectName: 'Research Problem'),
                                                                                                SubjectContainer(subjectName: 'Research design'),
                                                                                                SubjectContainer(subjectName: 'Sampling design'),
                                                                                                SubjectContainer(subjectName: 'Measurement and scaling technique'),
                                                                                                SubjectContainer(subjectName: 'Methods od data collection'),
                                                                                                SubjectContainer(subjectName: 'Sampling Fundamental'),
                                                                                                SubjectContainer(subjectName: 'Processing and Analysis of data'),
                                                                                                SubjectContainer(subjectName: 'Testing of hypothesis'),
                                                                                                SubjectContainer(subjectName: 'Computer technology'),
                                                                                              ],
                                                                                            )
                                                                                          : ListView(
                                                                                              children: [
                                                                                                SubjectContainer(subjectName: 'Introduction'),
                                                                                                SubjectContainer(subjectName: 'Tabulation of data'),
                                                                                                SubjectContainer(subjectName: 'Measure of central tendency'),
                                                                                                SubjectContainer(subjectName: 'Probability and standard distribution'),
                                                                                                SubjectContainer(subjectName: 'Sampling techniques'),
                                                                                                SubjectContainer(subjectName: 'Analysis of variance & covariance'),
                                                                                              ],
                                                                                            ),
    );
  }
}
