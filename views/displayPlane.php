<?php


// Data for the headings
$data['myInformation'] = ModelInformation::getAllInformation();
$data['myEducation'] = ModelEducation::getAllEducation();
$data['myWorkExp'] = ModelWorkExp::getAllWorkExp();
$data['mySkills'] = ModelSkill::getAllSkills();
$data['diverse'] = ModelDiverse::getAllDiverse();

$managementPlane = new ManagementPlane();


// Add plane of headings
$managementPlane->addPlane("views/htmlPlane/infoSection.php", "targetInformation", -19.3, 2.5, 0, 90, FALSE, "");

$managementPlane->addPlane("views/htmlPlane/educationSection.php", "targetEducation", 5, 2.5, 14.35, 180, FALSE, "");

$managementPlane->addPlane("views/htmlPlane/workExpSection.php", "targetWorkPro", -5, 2.5, 14.35, 180, FALSE, "");

$managementPlane->addPlane("views/htmlPlane/skillSectionTech.php", "targetSkillTech", -5, 2.5, -14.35, 0, FALSE, "");
$managementPlane->addPlane("views/htmlPlane/skillSectionHumLan.php", "targetSkillHumLan", 5, 2.5, -14.35, 0, FALSE, "");

$managementPlane->addPlane("views/htmlPlane/diverseSection.php", "targetDiverse", -2.25, 7.75, -14.35, 0, FALSE,"");


// Add publication panel
$managementPlane->addPlane("views/htmlPlane/asm.php", "targetASM", -10.24, 7.6, 1, 90, FALSE, "");
$managementPlane->addPlane("views/htmlPlane/pulpfiction.php", "targetPulpFiction", -10.24, 7.6, -9, 90, FALSE, "");
$managementPlane->addPlane("views/htmlPlane/banksy.php", "targetBanksy", 6.89, 7.6, 1, -90, FALSE, "");
$managementPlane->addPlane("views/htmlPlane/htcvive.php", "targetHTCVive", 6.89, 7.6, -9, -90, FALSE, "");

// Place the panels
$managementPlane->placeHTML($data);
?>
