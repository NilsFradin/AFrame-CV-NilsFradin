<div id="targetSkillHumLan" class="section">
    <div>
        <h1>Skills</h1>
        <?php
        $old_category = "";
        echo "<table>";
        foreach ($data['mySkills'] as $skill) {
            $category = $skill->getCategory();
            $details = $skill->getDetails();
            if ($category === "Human" || $category === "Language") {
                if ($category !== $old_category) {
                    echo "<tr>
                    <td class=\"leftPlane\"><b>$category</b></td>
                    <td class=\"rightPlane\">$details</td>
                    </tr>";
                    $old_category = $category;
                }else{
                    echo "<tr>
                    <td class=\"leftPlane\"><b></b></td>
                    <td class=\"rightPlane\">$details</td>
                    </tr>";
                    $old_category = $category;
                }
            }
        }
        echo "</table>";
        ?>
    </div>
</div>
