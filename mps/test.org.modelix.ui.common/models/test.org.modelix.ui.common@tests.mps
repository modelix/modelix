<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:07225b8f-c579-48a2-8ee5-904eee986cd0(test.org.modelix.ui.common@tests)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="qsto" ref="r:6f19a603-f6b1-4c78-aaa5-6c24c7fbc333(de.q60.mps.web.ui.common)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
    </language>
  </registry>
  <node concept="3s_ewN" id="7Ya3eUXL6hg">
    <property role="3s_ewP" value="HttpUtil_relativize" />
    <node concept="3Tm1VV" id="7Ya3eUXL6hh" role="1B3o_S" />
    <node concept="3s_gsd" id="7Ya3eUXL6hi" role="3s_ewO">
      <node concept="3s$Bmu" id="7Ya3eUXL6jZ" role="3s_gse">
        <property role="3s$Bm0" value="t1" />
        <node concept="3cqZAl" id="7Ya3eUXL6k0" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXL6k1" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXL6k2" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXL6mx" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXL6AQ" role="3tpDZB">
              <property role="Xl_RC" value="d" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXL6q6" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXL6rk" role="37wK5m">
                <property role="Xl_RC" value="/a/b" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXL6vH" role="37wK5m">
                <property role="Xl_RC" value="/a/d" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXL6Cb" role="3s_gse">
        <property role="3s$Bm0" value="t2" />
        <node concept="3cqZAl" id="7Ya3eUXL6Cc" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXL6Cd" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXL6Ce" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXL6Cf" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXL6Cg" role="3tpDZB">
              <property role="Xl_RC" value="../c/d" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXL6Ch" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXL6Ci" role="37wK5m">
                <property role="Xl_RC" value="/a/b" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXL6Cj" role="37wK5m">
                <property role="Xl_RC" value="/c/d" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXL6Gl" role="3s_gse">
        <property role="3s$Bm0" value="t3" />
        <node concept="3cqZAl" id="7Ya3eUXL6Gm" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXL6Gn" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXL6Go" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXL6Gp" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXL6Gq" role="3tpDZB">
              <property role="Xl_RC" value="../d/e" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXL6Gr" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXL6Gs" role="37wK5m">
                <property role="Xl_RC" value="/a/b/c" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXL6Gt" role="37wK5m">
                <property role="Xl_RC" value="/a/d/e" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXL6R9" role="3s_gse">
        <property role="3s$Bm0" value="t4" />
        <node concept="3cqZAl" id="7Ya3eUXL6Ra" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXL6Rb" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXL6Rc" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXL6Rd" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXL6Re" role="3tpDZB">
              <property role="Xl_RC" value="d" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXL6Rf" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXL6Rg" role="37wK5m">
                <property role="Xl_RC" value="/a/b/c" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXL6Rh" role="37wK5m">
                <property role="Xl_RC" value="/a/b/d" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXL6Xs" role="3s_gse">
        <property role="3s$Bm0" value="t5" />
        <node concept="3cqZAl" id="7Ya3eUXL6Xt" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXL6Xu" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXL6Xv" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXL6Xw" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXL6Xx" role="3tpDZB">
              <property role="Xl_RC" value="../e" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXL6Xy" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXL6Xz" role="37wK5m">
                <property role="Xl_RC" value="a/b/c" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXL6X$" role="37wK5m">
                <property role="Xl_RC" value="a/e" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXLeSA" role="3s_gse">
        <property role="3s$Bm0" value="t6" />
        <node concept="3cqZAl" id="7Ya3eUXLeSB" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXLeSC" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXLeSD" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXLeSE" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXLeSF" role="3tpDZB">
              <property role="Xl_RC" value="b" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXLeSG" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXLeSH" role="37wK5m">
                <property role="Xl_RC" value="/a" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXLeSI" role="37wK5m">
                <property role="Xl_RC" value="/b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXMeVz" role="3s_gse">
        <property role="3s$Bm0" value="t7" />
        <node concept="3cqZAl" id="7Ya3eUXMeV$" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXMeV_" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXMeVA" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXMeVB" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXMeVC" role="3tpDZB">
              <property role="Xl_RC" value="../b" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXMeVD" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXMeVE" role="37wK5m">
                <property role="Xl_RC" value="/a/b/" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXMeVF" role="37wK5m">
                <property role="Xl_RC" value="/a/b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXMmXo" role="3s_gse">
        <property role="3s$Bm0" value="t8" />
        <node concept="3cqZAl" id="7Ya3eUXMmXp" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXMmXq" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXMmXr" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXMmXs" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXMmXt" role="3tpDZB">
              <property role="Xl_RC" value="c" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXMmXu" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXMmXv" role="37wK5m">
                <property role="Xl_RC" value="/a/b/" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXMmXw" role="37wK5m">
                <property role="Xl_RC" value="/a/b/c" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXMn59" role="3s_gse">
        <property role="3s$Bm0" value="t9" />
        <node concept="3cqZAl" id="7Ya3eUXMn5a" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXMn5b" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXMn5c" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXMn5d" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXMn5e" role="3tpDZB">
              <property role="Xl_RC" value="b" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXMn5f" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXMn5g" role="37wK5m">
                <property role="Xl_RC" value="/a/b/" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXMn5h" role="37wK5m">
                <property role="Xl_RC" value="/a/b/b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXPHVm" role="3s_gse">
        <property role="3s$Bm0" value="t10" />
        <node concept="3cqZAl" id="7Ya3eUXPHVn" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXPHVo" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXPHVp" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXPHVq" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXPHVr" role="3tpDZB">
              <property role="Xl_RC" value="../../" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXPHVs" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXPHVt" role="37wK5m">
                <property role="Xl_RC" value="/a/b/" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXPHVu" role="37wK5m">
                <property role="Xl_RC" value="/" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXPI_2" role="3s_gse">
        <property role="3s$Bm0" value="t11" />
        <node concept="3cqZAl" id="7Ya3eUXPI_3" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXPI_4" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXPI_5" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXPI_6" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXPI_7" role="3tpDZB">
              <property role="Xl_RC" value="../" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXPI_8" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXPI_9" role="37wK5m">
                <property role="Xl_RC" value="/a/b" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXPI_a" role="37wK5m">
                <property role="Xl_RC" value="/" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXPIJd" role="3s_gse">
        <property role="3s$Bm0" value="t12" />
        <node concept="3cqZAl" id="7Ya3eUXPIJe" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXPIJf" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXPIJg" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXPIJh" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXPIJi" role="3tpDZB">
              <property role="Xl_RC" value="../" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXPIJj" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXPIJk" role="37wK5m">
                <property role="Xl_RC" value="/a/" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXPIJl" role="37wK5m">
                <property role="Xl_RC" value="/" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7Ya3eUXPITQ" role="3s_gse">
        <property role="3s$Bm0" value="t13" />
        <node concept="3cqZAl" id="7Ya3eUXPITR" role="3clF45" />
        <node concept="3Tm1VV" id="7Ya3eUXPITS" role="1B3o_S" />
        <node concept="3clFbS" id="7Ya3eUXPITT" role="3clF47">
          <node concept="3vlDli" id="7Ya3eUXPITU" role="3cqZAp">
            <node concept="Xl_RD" id="7Ya3eUXPITV" role="3tpDZB">
              <property role="Xl_RC" value="./" />
            </node>
            <node concept="2YIFZM" id="7Ya3eUXPITW" role="3tpDZA">
              <ref role="37wK5l" to="qsto:6MQUJsz1ile" resolve="relativizeUrl" />
              <ref role="1Pybhc" to="qsto:6MQUJsz1f_z" resolve="HttpUtil" />
              <node concept="Xl_RD" id="7Ya3eUXPITX" role="37wK5m">
                <property role="Xl_RC" value="/a" />
              </node>
              <node concept="Xl_RD" id="7Ya3eUXPITY" role="37wK5m">
                <property role="Xl_RC" value="/" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

