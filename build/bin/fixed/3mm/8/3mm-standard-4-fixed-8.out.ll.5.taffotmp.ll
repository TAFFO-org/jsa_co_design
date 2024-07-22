; ModuleID = './build/bin/fixed/3mm/8/3mm-standard-4-fixed-8.out.ll.4.taffotmp.ll'
source_filename = "./sources/3mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@G_float = dso_local global [6 x [12 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
  %cmp = fcmp oeq float %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ]
  %x.0 = phi float [ %div, %if.else ], [ %x.1, %for.inc ]
  %flag.0 = phi i32 [ 0, %if.else ], [ %flag.2, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %flag.0, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %mul = fmul float %x.0, %x.0
  %sub = fsub float %val, %mul
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
  %div4 = fdiv float %sub, %mul3
  %add = fadd float %x.0, %div4
  %mul5 = fmul float %add, %add
  %sub6 = fsub float %val, %mul5
  %cmp7 = fcmp oge float %sub6, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %fneg = fneg float %sub6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub6, %cond.true ], [ %fneg, %cond.false ]
  %cmp8 = fcmp ole float %cond, 0x3F50624DE0000000
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  %flag.1 = phi i32 [ 1, %if.then9 ], [ %flag.0, %cond.end ]
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %x.1 = phi float [ %x.0, %for.body ], [ %add, %if.end ]
  %flag.2 = phi i32 [ %flag.0, %for.body ], [ %flag.1, %if.end ]
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0
  %0 = load float, float* %arrayidx, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %0, %conv
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %mul, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !29 !taffo.funinfo !30 !taffo.equivalentChild !31 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0
  %1 = load float, float* %arrayidx4, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %1, %conv
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %mul, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !32

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !33

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !34 !taffo.funinfo !35 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %p
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %0 = mul nuw i32 %m, %p
  %1 = mul nsw i32 %i.0, %0
  %arrayidx = getelementptr inbounds float, float* %val, i32 %1
  %2 = mul nsw i32 %j.0, %p
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx, i32 %2
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx7, i32 %k.0
  %3 = load float, float* %arrayidx8, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %3, %conv
  %4 = mul nuw i32 %m, %p
  %5 = mul nsw i32 %i.0, %4
  %arrayidx9 = getelementptr inbounds float, float* %val, i32 %5
  %6 = mul nsw i32 %j.0, %p
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %6
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %k.0
  store float %mul, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !36

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !37

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !38

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !40 {
entry:
  %E.u2_30fixp = alloca [6 x [8 x i32]], align 4, !taffo.info !41
  %A.u1_31fixp = alloca [6 x [10 x i32]], align 4, !taffo.info !44
  %B.u1_31fixp = alloca [10 x [8 x i32]], align 4, !taffo.info !47
  %F.u2_30fixp = alloca [8 x [12 x i32]], align 4, !taffo.info !49
  %C.u1_31fixp = alloca [8 x [14 x i32]], align 4, !taffo.info !51
  %D.u1_31fixp = alloca [14 x [12 x i32]], align 4, !taffo.info !53
  %G.u4_28fixp = alloca [6 x [12 x i32]], align 4, !taffo.info !55, !taffo.target !57
  %arraydecay.u1_31fixp = getelementptr inbounds [6 x [10 x i32]], [6 x [10 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay8.u1_31fixp = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay9.u1_31fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %C.u1_31fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay10.u1_31fixp = getelementptr inbounds [14 x [12 x i32]], [14 x [12 x i32]]* %D.u1_31fixp, i32 0, i32 0, !taffo.info !53
  %arraydecay11.u2_30fixp = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %E.u2_30fixp, i32 0, i32 0, !taffo.info !41
  %arraydecay12.u2_30fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %F.u2_30fixp, i32 0, i32 0, !taffo.info !49
  %arraydecay13.u4_28fixp = getelementptr inbounds [6 x [12 x i32]], [6 x [12 x i32]]* %G.u4_28fixp, i32 0, i32 0, !taffo.info !55, !taffo.target !57
  call void @init_array.2_fixp(i32 6, i32 8, i32 10, i32 12, i32 14, [10 x i32]* %arraydecay.u1_31fixp, [8 x i32]* %arraydecay8.u1_31fixp, [14 x i32]* %arraydecay9.u1_31fixp, [12 x i32]* %arraydecay10.u1_31fixp, [8 x i32]* %arraydecay11.u2_30fixp, [12 x i32]* %arraydecay12.u2_30fixp, [12 x i32]* %arraydecay13.u4_28fixp), !taffo.info !58, !taffo.constinfo !59
  %arraydecay14.u2_30fixp = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %E.u2_30fixp, i32 0, i32 0, !taffo.info !41
  %u2_30fixp1 = bitcast [8 x i32]* %arraydecay14.u2_30fixp to i32*, !taffo.info !41
  call void @scale_2d.3_fixp(i32 6, i32 8, i32* %u2_30fixp1, i32 4), !taffo.info !58, !taffo.constinfo !60
  %arraydecay15.u1_31fixp = getelementptr inbounds [6 x [10 x i32]], [6 x [10 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !44
  %u1_31fixp3 = bitcast [10 x i32]* %arraydecay15.u1_31fixp to i32*, !taffo.info !44
  call void @scale_2d.4_fixp(i32 6, i32 10, i32* %u1_31fixp3, i32 4), !taffo.info !61, !taffo.constinfo !60
  %arraydecay16.u1_31fixp = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !47
  %u1_31fixp = bitcast [8 x i32]* %arraydecay16.u1_31fixp to i32*, !taffo.info !47
  call void @scale_2d.4_fixp(i32 10, i32 8, i32* %u1_31fixp, i32 4), !taffo.info !62, !taffo.constinfo !60
  %arraydecay17.u2_30fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %F.u2_30fixp, i32 0, i32 0, !taffo.info !49
  %u2_30fixp = bitcast [12 x i32]* %arraydecay17.u2_30fixp to i32*, !taffo.info !49
  call void @scale_2d.3_fixp(i32 8, i32 12, i32* %u2_30fixp, i32 4), !taffo.info !63, !taffo.constinfo !60
  %arraydecay18.u1_31fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %C.u1_31fixp, i32 0, i32 0, !taffo.info !51
  %u1_31fixp2 = bitcast [14 x i32]* %arraydecay18.u1_31fixp to i32*, !taffo.info !51
  call void @scale_2d.4_fixp(i32 8, i32 14, i32* %u1_31fixp2, i32 4), !taffo.info !64, !taffo.constinfo !60
  %arraydecay19.u1_31fixp = getelementptr inbounds [14 x [12 x i32]], [14 x [12 x i32]]* %D.u1_31fixp, i32 0, i32 0, !taffo.info !53
  %u1_31fixp4 = bitcast [12 x i32]* %arraydecay19.u1_31fixp to i32*, !taffo.info !53
  call void @scale_2d.4_fixp(i32 14, i32 12, i32* %u1_31fixp4, i32 4), !taffo.info !65, !taffo.constinfo !60
  %arraydecay20.u4_28fixp = getelementptr inbounds [6 x [12 x i32]], [6 x [12 x i32]]* %G.u4_28fixp, i32 0, i32 0, !taffo.info !55, !taffo.target !57
  %u4_28fixp = bitcast [12 x i32]* %arraydecay20.u4_28fixp to i32*, !taffo.info !55, !taffo.target !57
  call void @scale_2d.9_fixp(i32 6, i32 12, i32* %u4_28fixp, i32 4), !taffo.info !66, !taffo.constinfo !60, !taffo.target !57
  call void @timer_start(), !taffo.constinfo !67
  %arraydecay21.u2_30fixp = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %E.u2_30fixp, i32 0, i32 0, !taffo.info !41
  %arraydecay22.u1_31fixp = getelementptr inbounds [6 x [10 x i32]], [6 x [10 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay23.u1_31fixp = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay24.u2_30fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %F.u2_30fixp, i32 0, i32 0, !taffo.info !49
  %arraydecay25.u1_31fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %C.u1_31fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay26.u1_31fixp = getelementptr inbounds [14 x [12 x i32]], [14 x [12 x i32]]* %D.u1_31fixp, i32 0, i32 0, !taffo.info !53
  %arraydecay27.u4_28fixp = getelementptr inbounds [6 x [12 x i32]], [6 x [12 x i32]]* %G.u4_28fixp, i32 0, i32 0, !taffo.info !55, !taffo.target !57
  call void @kernel_3mm.1_fixp(i32 6, i32 8, i32 10, i32 12, i32 14, [8 x i32]* %arraydecay21.u2_30fixp, [10 x i32]* %arraydecay22.u1_31fixp, [8 x i32]* %arraydecay23.u1_31fixp, [12 x i32]* %arraydecay24.u2_30fixp, [14 x i32]* %arraydecay25.u1_31fixp, [12 x i32]* %arraydecay26.u1_31fixp, [12 x i32]* %arraydecay27.u4_28fixp), !taffo.info !58, !taffo.constinfo !59
  call void @timer_stop(), !taffo.constinfo !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc35, %for.inc34 ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, 6, !taffo.info !70
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !72
  %cmp29 = icmp slt i32 %j.0, 12, !taffo.info !70
  br i1 %cmp29, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond28
  %arrayidx.u4_28fixp = getelementptr inbounds [6 x [12 x i32]], [6 x [12 x i32]]* %G.u4_28fixp, i32 0, i32 %i.0, !taffo.info !55, !taffo.target !57
  %arrayidx31.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !55, !taffo.target !57
  %u4_28fixp5 = load i32, i32* %arrayidx31.u4_28fixp, align 4, !taffo.info !55, !taffo.target !57
  %0 = uitofp i32 %u4_28fixp5 to float, !taffo.info !55, !taffo.target !57
  %1 = fdiv float %0, 0x41B0000000000000, !taffo.info !55, !taffo.target !57
  %arrayidx32 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx32, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx33, align 4, !taffo.info !66, !taffo.target !57
  br label %for.inc

for.inc:                                          ; preds = %for.body30
  %inc = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !76

for.end:                                          ; preds = %for.cond28
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %inc35 = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !79

for.end36:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 6, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 0)), !taffo.constinfo !80
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [12 x float]* noundef %G) #0 !taffo.initweight !26 !taffo.funinfo !81 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !86
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !86
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !88
  %add = add nsw i32 %mul, %j.0, !taffo.info !88
  %rem = srem i32 %add, 20, !taffo.info !88, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !86
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !90
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !80
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !91

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !92

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm.1_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x i32]* noundef %E.u2_30fixp, [10 x i32]* noundef %A.u1_31fixp, [8 x i32]* noundef %B.u1_31fixp, [12 x i32]* noundef %F.u2_30fixp, [14 x i32]* noundef %C.u1_31fixp, [12 x i32]* noundef %D.u1_31fixp, [12 x i32]* noundef %G.u4_28fixp) #0 !taffo.initweight !93 !taffo.funinfo !94 !taffo.sourceFunction !99 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !86
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !70
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !86
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u2_30fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u2_30fixp, i32 %i.0, !taffo.info !41
  %arrayidx4.u2_30fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx.u2_30fixp, i32 0, i32 %j.0, !taffo.info !41
  store i32 0, i32* %arrayidx4.u2_30fixp, align 4, !taffo.info !100, !taffo.constinfo !101
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !70
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !86
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !44
  %arrayidx9.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx8.u1_31fixp, i32 0, i32 %k.0, !taffo.info !44
  %u1_31fixp = load i32, i32* %arrayidx9.u1_31fixp, align 4, !taffo.info !44
  %arrayidx10.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %B.u1_31fixp, i32 %k.0, !taffo.info !47
  %arrayidx11.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx10.u1_31fixp, i32 0, i32 %j.0, !taffo.info !47
  %u1_31fixp2 = load i32, i32* %arrayidx11.u1_31fixp, align 4, !taffo.info !47
  %0 = lshr i32 %u1_31fixp, 1, !taffo.info !44
  %1 = lshr i32 %u1_31fixp2, 1, !taffo.info !47
  %2 = ashr i32 %0, 1, !taffo.info !44
  %3 = ashr i32 %1, 1, !taffo.info !47
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 29), !taffo.info !102
  %mul.u2_30fixp = shl i32 %4, 1, !taffo.info !105
  %arrayidx12.u2_30fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u2_30fixp, i32 %i.0, !taffo.info !41
  %arrayidx13.u2_30fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx12.u2_30fixp, i32 0, i32 %j.0, !taffo.info !41
  %u2_30fixp = load i32, i32* %arrayidx13.u2_30fixp, align 4, !taffo.info !41
  %add.u2_30fixp = add i32 %u2_30fixp, %mul.u2_30fixp, !taffo.info !106
  store i32 %add.u2_30fixp, i32* %arrayidx13.u2_30fixp, align 4, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !108

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !109

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !110

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc46, %for.inc45 ], !taffo.info !70
  %cmp21 = icmp slt i32 %i.1, %nj, !taffo.info !86
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc43, %for.inc42 ], !taffo.info !70
  %cmp24 = icmp slt i32 %j.1, %nl, !taffo.info !86
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %arrayidx26.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u2_30fixp, i32 %i.1, !taffo.info !49
  %arrayidx27.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx26.u2_30fixp, i32 0, i32 %j.1, !taffo.info !49
  store i32 0, i32* %arrayidx27.u2_30fixp, align 4, !taffo.info !100, !taffo.constinfo !101
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %k.1 = phi i32 [ 0, %for.body25 ], [ %inc40, %for.inc39 ], !taffo.info !70
  %cmp29 = icmp slt i32 %k.1, %nm, !taffo.info !86
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %arrayidx31.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u1_31fixp, i32 %i.1, !taffo.info !51
  %arrayidx32.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx31.u1_31fixp, i32 0, i32 %k.1, !taffo.info !51
  %u1_31fixp5 = load i32, i32* %arrayidx32.u1_31fixp, align 4, !taffo.info !51
  %arrayidx33.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %D.u1_31fixp, i32 %k.1, !taffo.info !53
  %arrayidx34.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx33.u1_31fixp, i32 0, i32 %j.1, !taffo.info !53
  %u1_31fixp6 = load i32, i32* %arrayidx34.u1_31fixp, align 4, !taffo.info !53
  %5 = lshr i32 %u1_31fixp5, 1, !taffo.info !51
  %6 = lshr i32 %u1_31fixp6, 1, !taffo.info !53
  %7 = ashr i32 %5, 1, !taffo.info !51
  %8 = ashr i32 %6, 1, !taffo.info !53
  %9 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %8, i32 29), !taffo.info !111
  %mul35.u2_30fixp = shl i32 %9, 1, !taffo.info !113
  %arrayidx36.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u2_30fixp, i32 %i.1, !taffo.info !49
  %arrayidx37.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx36.u2_30fixp, i32 0, i32 %j.1, !taffo.info !49
  %u2_30fixp3 = load i32, i32* %arrayidx37.u2_30fixp, align 4, !taffo.info !49
  %add38.u2_30fixp = add i32 %u2_30fixp3, %mul35.u2_30fixp, !taffo.info !114
  store i32 %add38.u2_30fixp, i32* %arrayidx37.u2_30fixp, align 4, !taffo.info !63
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %inc40 = add nsw i32 %k.1, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !116

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %j.1, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !117

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %i.1, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !118

for.end47:                                        ; preds = %for.cond20
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %i.2 = phi i32 [ 0, %for.end47 ], [ %inc74, %for.inc73 ], !taffo.info !70
  %cmp49 = icmp slt i32 %i.2, %ni, !taffo.info !86
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %j.2 = phi i32 [ 0, %for.body50 ], [ %inc71, %for.inc70 ], !taffo.info !70
  %cmp52 = icmp slt i32 %j.2, %nl, !taffo.info !86
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %arrayidx54.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %G.u4_28fixp, i32 %i.2, !taffo.info !55
  %arrayidx55.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx54.u4_28fixp, i32 0, i32 %j.2, !taffo.info !55
  store i32 0, i32* %arrayidx55.u4_28fixp, align 4, !taffo.info !100, !taffo.constinfo !101
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %k.2 = phi i32 [ 0, %for.body53 ], [ %inc68, %for.inc67 ], !taffo.info !70
  %cmp57 = icmp slt i32 %k.2, %nj, !taffo.info !86
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %arrayidx59.u2_30fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u2_30fixp, i32 %i.2, !taffo.info !41
  %arrayidx60.u2_30fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx59.u2_30fixp, i32 0, i32 %k.2, !taffo.info !41
  %u2_30fixp1 = load i32, i32* %arrayidx60.u2_30fixp, align 4, !taffo.info !119
  %arrayidx61.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u2_30fixp, i32 %k.2, !taffo.info !49
  %arrayidx62.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx61.u2_30fixp, i32 0, i32 %j.2, !taffo.info !49
  %u2_30fixp4 = load i32, i32* %arrayidx62.u2_30fixp, align 4, !taffo.info !121
  %10 = lshr i32 %u2_30fixp1, 1, !taffo.info !119
  %11 = lshr i32 %u2_30fixp4, 1, !taffo.info !121
  %12 = ashr i32 %10, 3, !taffo.info !119
  %13 = ashr i32 %11, 3, !taffo.info !121
  %14 = call i32 @llvm.smul.fix.i32(i32 %12, i32 %13, i32 26), !taffo.info !122
  %mul63.u5_27fixp = shl i32 %14, 1, !taffo.info !125
  %arrayidx64.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %G.u4_28fixp, i32 %i.2, !taffo.info !55
  %arrayidx65.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx64.u4_28fixp, i32 0, i32 %j.2, !taffo.info !55
  %u4_28fixp = load i32, i32* %arrayidx65.u4_28fixp, align 4, !taffo.info !127
  %15 = lshr i32 %u4_28fixp, 1, !taffo.info !127
  %add66.u5_27fixp = add i32 %15, %mul63.u5_27fixp, !taffo.info !128
  %16 = shl i32 %add66.u5_27fixp, 1, !taffo.info !128
  store i32 %16, i32* %arrayidx65.u4_28fixp, align 4, !taffo.info !66
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %inc68 = add nsw i32 %k.2, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !130

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %inc71 = add nsw i32 %j.2, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond51, !llvm.loop !131

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %inc74 = add nsw i32 %i.2, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !132

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x i32]* noundef %A.u1_31fixp, [8 x i32]* noundef %B.u1_31fixp, [14 x i32]* noundef %C.u1_31fixp, [12 x i32]* noundef %D.u1_31fixp, [8 x i32]* noundef %E.u2_30fixp, [12 x i32]* noundef %F.u2_30fixp, [12 x i32]* noundef %G.u4_28fixp) #0 !taffo.initweight !93 !taffo.funinfo !133 !taffo.sourceFunction !134 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !135, !taffo.initweight !137
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp, label %for.body, label %for.end11, !taffo.info !140, !taffo.initweight !142

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !135, !taffo.initweight !137
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !140, !taffo.initweight !142

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !143, !taffo.initweight !139
  %add = add nsw i32 %mul, 1, !taffo.info !145, !taffo.initweight !142, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !147, !taffo.initweight !149
  %conv.u3_29fixp = shl i32 %rem, 29, !taffo.info !150
  %mul6 = mul nsw i32 5, %ni, !taffo.info !151, !taffo.constinfo !21
  %conv7.u5_27fixp = shl i32 %mul6, 27, !taffo.info !153, !taffo.constinfo !21
  %0 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !150
  %1 = lshr i32 %conv7.u5_27fixp, 1, !taffo.info !153, !taffo.constinfo !21
  %2 = ashr i32 %0, 2, !taffo.info !150
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !154
  %div.u3_29fixp = shl i32 %3, 3, !taffo.info !156
  %arrayidx.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !157
  %arrayidx8.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u1_31fixp, i32 0, i32 %j.0, !taffo.info !157
  %4 = shl i32 %div.u3_29fixp, 2, !taffo.info !156
  store i32 %4, i32* %arrayidx8.u1_31fixp, align 4, !taffo.info !100
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !160

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !161

for.end11:                                        ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %i.1 = phi i32 [ 0, %for.end11 ], [ %inc34, %for.inc33 ], !taffo.info !135, !taffo.initweight !137
  %cmp13 = icmp slt i32 %i.1, %nk, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.info !140, !taffo.initweight !142

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc31, %for.inc30 ], !taffo.info !135, !taffo.initweight !137
  %cmp17 = icmp slt i32 %j.1, %nj, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.info !140, !taffo.initweight !142

for.body19:                                       ; preds = %for.cond16
  %add20 = add nsw i32 %j.1, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  %mul21 = mul nsw i32 %i.1, %add20, !taffo.info !162, !taffo.initweight !139
  %add22 = add nsw i32 %mul21, 2, !taffo.info !164, !taffo.initweight !142, !taffo.constinfo !21
  %rem23 = srem i32 %add22, %nj, !taffo.info !166, !taffo.initweight !149
  %conv24.u3_29fixp = shl i32 %rem23, 29, !taffo.info !167
  %mul25 = mul nsw i32 5, %nj, !taffo.info !168, !taffo.constinfo !21
  %conv26.u6_26fixp = shl i32 %mul25, 26, !taffo.info !170, !taffo.constinfo !21
  %5 = lshr i32 %conv24.u3_29fixp, 1, !taffo.info !167
  %6 = lshr i32 %conv26.u6_26fixp, 1, !taffo.info !170, !taffo.constinfo !21
  %7 = ashr i32 %5, 3, !taffo.info !167
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 25), !taffo.info !172
  %div27.u3_29fixp = shl i32 %8, 4, !taffo.info !175
  %arrayidx28.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %B.u1_31fixp, i32 %i.1, !taffo.info !176
  %arrayidx29.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx28.u1_31fixp, i32 0, i32 %j.1, !taffo.info !176
  %9 = shl i32 %div27.u3_29fixp, 2, !taffo.info !175
  store i32 %9, i32* %arrayidx29.u1_31fixp, align 4, !taffo.info !100
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !177

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !178

for.end35:                                        ; preds = %for.cond12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc57, %for.inc56 ], !taffo.info !135, !taffo.initweight !137
  %cmp37 = icmp slt i32 %i.2, %nj, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.info !140, !taffo.initweight !142

for.body39:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc54, %for.inc53 ], !taffo.info !135, !taffo.initweight !137
  %cmp41 = icmp slt i32 %j.2, %nm, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.info !140, !taffo.initweight !142

for.body43:                                       ; preds = %for.cond40
  %add44 = add nsw i32 %j.2, 3, !taffo.info !179, !taffo.initweight !139, !taffo.constinfo !21
  %mul45 = mul nsw i32 %i.2, %add44, !taffo.info !181, !taffo.initweight !139
  %rem46 = srem i32 %mul45, %nl, !taffo.info !183, !taffo.initweight !142
  %conv47.u4_28fixp = shl i32 %rem46, 28, !taffo.info !185
  %mul48 = mul nsw i32 5, %nl, !taffo.info !186, !taffo.constinfo !21
  %conv49.u6_26fixp = shl i32 %mul48, 26, !taffo.info !188, !taffo.constinfo !21
  %10 = lshr i32 %conv47.u4_28fixp, 1, !taffo.info !185
  %11 = lshr i32 %conv49.u6_26fixp, 1, !taffo.info !188, !taffo.constinfo !21
  %12 = ashr i32 %10, 2, !taffo.info !185
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %11, i32 25), !taffo.info !189
  %div50.u1_31fixp = shl i32 %13, 6, !taffo.info !191
  %arrayidx51.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u1_31fixp, i32 %i.2, !taffo.info !192
  %arrayidx52.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx51.u1_31fixp, i32 0, i32 %j.2, !taffo.info !192
  store i32 %div50.u1_31fixp, i32* %arrayidx52.u1_31fixp, align 4, !taffo.info !100
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %inc54 = add nsw i32 %j.2, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond40, !llvm.loop !193

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond36, !llvm.loop !194

for.end58:                                        ; preds = %for.cond36
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %i.3 = phi i32 [ 0, %for.end58 ], [ %inc81, %for.inc80 ], !taffo.info !135, !taffo.initweight !137
  %cmp60 = icmp slt i32 %i.3, %nm, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.info !140, !taffo.initweight !142

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc78, %for.inc77 ], !taffo.info !135, !taffo.initweight !137
  %cmp64 = icmp slt i32 %j.3, %nl, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.info !140, !taffo.initweight !142

for.body66:                                       ; preds = %for.cond63
  %add67 = add nsw i32 %j.3, 2, !taffo.info !195, !taffo.initweight !139, !taffo.constinfo !21
  %mul68 = mul nsw i32 %i.3, %add67, !taffo.info !197, !taffo.initweight !139
  %add69 = add nsw i32 %mul68, 2, !taffo.info !199, !taffo.initweight !142, !taffo.constinfo !21
  %rem70 = srem i32 %add69, %nk, !taffo.info !201, !taffo.initweight !149
  %conv71.u4_28fixp = shl i32 %rem70, 28, !taffo.info !203
  %mul72 = mul nsw i32 5, %nk, !taffo.info !204, !taffo.constinfo !21
  %conv73.u6_26fixp = shl i32 %mul72, 26, !taffo.info !206, !taffo.constinfo !21
  %14 = lshr i32 %conv71.u4_28fixp, 1, !taffo.info !203
  %15 = lshr i32 %conv73.u6_26fixp, 1, !taffo.info !206, !taffo.constinfo !21
  %16 = ashr i32 %14, 2, !taffo.info !203
  %17 = call i32 @llvm.sdiv.fix.i32(i32 %16, i32 %15, i32 25), !taffo.info !207
  %div74.u1_31fixp = shl i32 %17, 6, !taffo.info !209
  %arrayidx75.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %D.u1_31fixp, i32 %i.3, !taffo.info !210
  %arrayidx76.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx75.u1_31fixp, i32 0, i32 %j.3, !taffo.info !210
  store i32 %div74.u1_31fixp, i32* %arrayidx76.u1_31fixp, align 4, !taffo.info !100
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond63, !llvm.loop !211

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %inc81 = add nsw i32 %i.3, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond59, !llvm.loop !212

for.end82:                                        ; preds = %for.cond59
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %i.4 = phi i32 [ 0, %for.end82 ], [ %inc97, %for.inc96 ], !taffo.info !135, !taffo.initweight !137
  %cmp84 = icmp slt i32 %i.4, %ni, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.info !140, !taffo.initweight !142

for.body86:                                       ; preds = %for.cond83
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %j.4 = phi i32 [ 0, %for.body86 ], [ %inc94, %for.inc93 ], !taffo.info !135, !taffo.initweight !137
  %cmp88 = icmp slt i32 %j.4, %nj, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.info !140, !taffo.initweight !142

for.body90:                                       ; preds = %for.cond87
  %arrayidx91.u2_30fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u2_30fixp, i32 %i.4, !taffo.info !213
  %arrayidx92.u2_30fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx91.u2_30fixp, i32 0, i32 %j.4, !taffo.info !213
  store i32 0, i32* %arrayidx92.u2_30fixp, align 4, !taffo.info !100, !taffo.constinfo !101
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %inc94 = add nsw i32 %j.4, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond87, !llvm.loop !214

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %inc97 = add nsw i32 %i.4, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond83, !llvm.loop !215

for.end98:                                        ; preds = %for.cond83
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %i.5 = phi i32 [ 0, %for.end98 ], [ %inc113, %for.inc112 ], !taffo.info !135, !taffo.initweight !137
  %cmp100 = icmp slt i32 %i.5, %nj, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.info !140, !taffo.initweight !142

for.body102:                                      ; preds = %for.cond99
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %j.5 = phi i32 [ 0, %for.body102 ], [ %inc110, %for.inc109 ], !taffo.info !135, !taffo.initweight !137
  %cmp104 = icmp slt i32 %j.5, %nl, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.info !140, !taffo.initweight !142

for.body106:                                      ; preds = %for.cond103
  %arrayidx107.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u2_30fixp, i32 %i.5, !taffo.info !216
  %arrayidx108.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx107.u2_30fixp, i32 0, i32 %j.5, !taffo.info !216
  store i32 0, i32* %arrayidx108.u2_30fixp, align 4, !taffo.info !100, !taffo.constinfo !101
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %j.5, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond103, !llvm.loop !217

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %inc113 = add nsw i32 %i.5, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond99, !llvm.loop !218

for.end114:                                       ; preds = %for.cond99
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %i.6 = phi i32 [ 0, %for.end114 ], [ %inc129, %for.inc128 ], !taffo.info !135, !taffo.initweight !137
  %cmp116 = icmp slt i32 %i.6, %ni, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.info !140, !taffo.initweight !142

for.body118:                                      ; preds = %for.cond115
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %j.6 = phi i32 [ 0, %for.body118 ], [ %inc126, %for.inc125 ], !taffo.info !135, !taffo.initweight !137
  %cmp120 = icmp slt i32 %j.6, %nl, !taffo.info !138, !taffo.initweight !139
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.info !140, !taffo.initweight !142

for.body122:                                      ; preds = %for.cond119
  %arrayidx123.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %G.u4_28fixp, i32 %i.6, !taffo.info !219
  %arrayidx124.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx123.u4_28fixp, i32 0, i32 %j.6, !taffo.info !219
  store i32 0, i32* %arrayidx124.u4_28fixp, align 4, !taffo.info !100, !taffo.constinfo !101
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %inc126 = add nsw i32 %j.6, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond119, !llvm.loop !220

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %inc129 = add nsw i32 %i.6, 1, !taffo.info !158, !taffo.initweight !139, !taffo.constinfo !21
  br label %for.cond115, !llvm.loop !221

for.end130:                                       ; preds = %for.cond115
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u1_31fixp, i32 noundef %factor) #0 !taffo.initweight !222 !taffo.funinfo !223 !taffo.sourceFunction !226 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !86
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !86
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !88
  %arrayidx.u1_31fixp = getelementptr inbounds i32, i32* %val.u1_31fixp, i32 %0, !taffo.info !44
  %arrayidx4.u1_31fixp = getelementptr inbounds i32, i32* %arrayidx.u1_31fixp, i32 %j.0, !taffo.info !44
  %u1_31fixp = load i32, i32* %arrayidx4.u1_31fixp, align 4, !taffo.info !227
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !228
  %1 = lshr i32 %u1_31fixp, 1, !taffo.info !227
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !228
  %3 = ashr i32 %1, 2, !taffo.info !227
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 28), !taffo.info !229
  %mul.u2_30fixp = shl i32 %4, 2, !taffo.info !232
  %5 = mul nsw i32 %i.0, %m, !taffo.info !88
  %arrayidx5.u1_31fixp = getelementptr inbounds i32, i32* %val.u1_31fixp, i32 %5, !taffo.info !44
  %arrayidx6.u1_31fixp = getelementptr inbounds i32, i32* %arrayidx5.u1_31fixp, i32 %j.0, !taffo.info !44
  %6 = shl i32 %mul.u2_30fixp, 1, !taffo.info !232
  store i32 %6, i32* %arrayidx6.u1_31fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !233

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !234

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !222 !taffo.funinfo !235 !taffo.sourceFunction !226 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !86
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !86
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !88
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %0, !taffo.info !55
  %arrayidx4.u4_28fixp = getelementptr inbounds i32, i32* %arrayidx.u4_28fixp, i32 %j.0, !taffo.info !55
  %u4_28fixp = load i32, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !236
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !228
  %1 = lshr i32 %u4_28fixp, 1, !taffo.info !236
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !228
  %3 = ashr i32 %1, 2, !taffo.info !236
  %4 = ashr i32 %2, 3, !taffo.info !228
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 25), !taffo.info !237
  %mul.u6_26fixp = shl i32 %5, 1, !taffo.info !239
  %6 = mul nsw i32 %i.0, %m, !taffo.info !88
  %arrayidx5.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %6, !taffo.info !55
  %arrayidx6.u4_28fixp = getelementptr inbounds i32, i32* %arrayidx5.u4_28fixp, i32 %j.0, !taffo.info !55
  %7 = shl i32 %mul.u6_26fixp, 2, !taffo.info !239
  store i32 %7, i32* %arrayidx6.u4_28fixp, align 4, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !240

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !241

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !222 !taffo.funinfo !242 !taffo.sourceFunction !226 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !86
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !86
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !88
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %0, !taffo.info !41
  %arrayidx4.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx.u2_30fixp, i32 %j.0, !taffo.info !41
  %u2_30fixp = load i32, i32* %arrayidx4.u2_30fixp, align 4, !taffo.info !119
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !228
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !119
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !228
  %3 = ashr i32 %1, 1, !taffo.info !119
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 28), !taffo.info !243
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !245
  %5 = mul nsw i32 %i.0, %m, !taffo.info !88
  %arrayidx5.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %5, !taffo.info !41
  %arrayidx6.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx5.u2_30fixp, i32 %j.0, !taffo.info !41
  %6 = shl i32 %mul.u3_29fixp, 1, !taffo.info !245
  store i32 %6, i32* %arrayidx6.u2_30fixp, align 4, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !246

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !247

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x402BCB068123810F}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.000000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.020000e+02}
!6 = !{i32 1, !"NumRegisterParameters", i32 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.000000e+01, double 1.000000e+01}
!18 = !{!19, i1 false}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 2.000000e+00, double 2.000000e+00}
!21 = !{i1 false, i1 false}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{i32 -1, i32 -1}
!25 = !{i32 0, i1 false, i32 0, i1 false}
!26 = !{i32 -1, i32 -1, i32 -1}
!27 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!28 = distinct !{!28, !23}
!29 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!31 = distinct !{null, null, null, null, null, null, null}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!35 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = !{}
!40 = !{i1 true}
!41 = !{!42, !43, i1 false, i2 -1}
!42 = !{!"fixp", i32 32, i32 30}
!43 = !{double 0.000000e+00, double 0x3FFBBBBB62413DB8}
!44 = !{!45, !46, i1 false, i2 -1}
!45 = !{!"fixp", i32 32, i32 31}
!46 = !{double 0.000000e+00, double 6.666670e-01}
!47 = !{!45, !48, i1 false, i2 -1}
!48 = !{double 0.000000e+00, double 0x3FE6666666666666}
!49 = !{!42, !50, i1 false, i2 -1}
!50 = !{double 0.000000e+00, double 2.048000e+00}
!51 = !{!45, !52, i1 false, i2 -1}
!52 = !{double 0.000000e+00, double 7.333330e-01}
!53 = !{!45, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 0x3FE70A3D70A3D70A}
!55 = !{!56, !1, i1 false, i2 -1}
!56 = !{!"fixp", i32 32, i32 28}
!57 = !{!"G"}
!58 = !{i1 false, !43, i1 false, i2 -1}
!59 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!60 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!61 = !{i1 false, !46, i1 false, i2 -1}
!62 = !{i1 false, !48, i1 false, i2 -1}
!63 = !{i1 false, !50, i1 false, i2 -1}
!64 = !{i1 false, !52, i1 false, i2 -1}
!65 = !{i1 false, !54, i1 false, i2 -1}
!66 = !{i1 false, !1, i1 false, i2 -1}
!67 = !{i1 false}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 7.000000e+00}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 1.000000e+00}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 0.000000e+00, double 9.100000e+01}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 9.100000e+01}
!76 = distinct !{!76, !23}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 1.000000e+00, double 7.000000e+00}
!79 = distinct !{!79, !23}
!80 = !{i1 false, i1 false, i1 false, i1 false}
!81 = !{i32 1, !82, i32 1, !84, i32 1, !0}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 6.000000e+00, double 6.000000e+00}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 1.200000e+01, double 1.200000e+01}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 1.000000e+00, double 1.000000e+00}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 0.000000e+00, double 0.000000e+00}
!90 = !{i1 false, i1 false, i1 false}
!91 = distinct !{!91, !23}
!92 = distinct !{!92, !23}
!93 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!94 = !{i32 1, !82, i32 1, !95, i32 1, !16, i32 1, !84, i32 1, !97, i32 1, !41, i32 1, !44, i32 1, !47, i32 1, !49, i32 1, !51, i32 1, !53, i32 1, !55}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double 8.000000e+00, double 8.000000e+00}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 1.400000e+01, double 1.400000e+01}
!99 = distinct !{null}
!100 = !{i1 false, i1 false, i1 false, i2 1}
!101 = !{!88, i1 false}
!102 = !{!103, !104, i1 false, i2 -1}
!103 = !{!"fixp", i32 -32, i32 29}
!104 = !{double 0.000000e+00, double 0x3FDDDDDED8680B82}
!105 = !{!42, !104, i1 false, i2 -1}
!106 = !{!42, !107, i1 false, i2 -1}
!107 = !{double 0.000000e+00, double 0x400199998C2DA04C}
!108 = distinct !{!108, !23}
!109 = distinct !{!109, !23}
!110 = distinct !{!110, !23}
!111 = !{!103, !112, i1 false, i2 -1}
!112 = !{double 0.000000e+00, double 0x3FE0E55FC0AFDDFF}
!113 = !{!42, !112, i1 false, i2 -1}
!114 = !{!42, !115, i1 false, i2 -1}
!115 = !{double 0.000000e+00, double 0x40049BA5C31DA17C}
!116 = distinct !{!116, !23}
!117 = distinct !{!117, !23}
!118 = distinct !{!118, !23}
!119 = !{!120, !43, i1 false, i2 -1}
!120 = !{!"fixp", i32 32, i32 29}
!121 = !{!120, !50, i1 false, i2 -1}
!122 = !{!123, !124, i1 false, i2 -1}
!123 = !{!"fixp", i32 -32, i32 26}
!124 = !{double 0.000000e+00, double 0x400C66202313B3F0}
!125 = !{!126, !124, i1 false, i2 -1}
!126 = !{!"fixp", i32 32, i32 27}
!127 = !{!126, !1, i1 false, i2 -1}
!128 = !{!126, !129, i1 false, i2 -1}
!129 = !{double 0.000000e+00, double 0x4031724744F43706}
!130 = distinct !{!130, !23}
!131 = distinct !{!131, !23}
!132 = distinct !{!132, !23}
!133 = !{i32 1, !82, i32 1, !95, i32 1, !16, i32 1, !84, i32 1, !97, i32 1, !44, i32 1, !47, i32 1, !51, i32 1, !53, i32 1, !41, i32 1, !49, i32 1, !55}
!134 = distinct !{null}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 0.000000e+00, double 1.500000e+01}
!137 = !{i32 0}
!138 = !{i1 false, !71, i1 false, i2 1}
!139 = !{i32 2}
!140 = !{i1 false, !141, i1 false, i2 1}
!141 = !{double 0.000000e+00, double 1.400000e+01}
!142 = !{i32 3}
!143 = !{i1 false, !144, i1 false, i2 1}
!144 = !{double 0.000000e+00, double 1.960000e+02}
!145 = !{i1 false, !146, i1 false, i2 1}
!146 = !{double 1.000000e+00, double 1.970000e+02}
!147 = !{i1 false, !148, i1 false, i2 1}
!148 = !{double 0.000000e+00, double 5.000000e+00}
!149 = !{i32 4}
!150 = !{!120, !148, i1 false, i2 1}
!151 = !{i1 false, !152, i1 false, i2 0}
!152 = !{double 3.000000e+01, double 3.000000e+01}
!153 = !{!126, !152, i1 false, i2 1}
!154 = !{!123, !155, i1 false, i2 1}
!155 = !{double 0.000000e+00, double 0x3FC5555555555555}
!156 = !{!120, !155, i1 false, i2 1}
!157 = !{!45, !46, i1 false, i2 1}
!158 = !{i1 false, !159, i1 false, i2 1}
!159 = !{double 1.000000e+00, double 1.500000e+01}
!160 = distinct !{!160, !23}
!161 = distinct !{!161, !23}
!162 = !{i1 false, !163, i1 false, i2 1}
!163 = !{double 0.000000e+00, double 2.100000e+02}
!164 = !{i1 false, !165, i1 false, i2 1}
!165 = !{double 2.000000e+00, double 2.120000e+02}
!166 = !{i1 false, !69, i1 false, i2 1}
!167 = !{!120, !69, i1 false, i2 1}
!168 = !{i1 false, !169, i1 false, i2 0}
!169 = !{double 4.000000e+01, double 4.000000e+01}
!170 = !{!171, !169, i1 false, i2 1}
!171 = !{!"fixp", i32 32, i32 26}
!172 = !{!173, !174, i1 false, i2 1}
!173 = !{!"fixp", i32 -32, i32 25}
!174 = !{double 0.000000e+00, double 1.750000e-01}
!175 = !{!120, !174, i1 false, i2 1}
!176 = !{!45, !48, i1 false, i2 1}
!177 = distinct !{!177, !23}
!178 = distinct !{!178, !23}
!179 = !{i1 false, !180, i1 false, i2 1}
!180 = !{double 3.000000e+00, double 1.700000e+01}
!181 = !{i1 false, !182, i1 false, i2 1}
!182 = !{double 0.000000e+00, double 2.380000e+02}
!183 = !{i1 false, !184, i1 false, i2 1}
!184 = !{double 0.000000e+00, double 1.100000e+01}
!185 = !{!56, !184, i1 false, i2 1}
!186 = !{i1 false, !187, i1 false, i2 0}
!187 = !{double 6.000000e+01, double 6.000000e+01}
!188 = !{!171, !187, i1 false, i2 1}
!189 = !{!173, !190, i1 false, i2 1}
!190 = !{double 0.000000e+00, double 0x3FC7777777777777}
!191 = !{!45, !190, i1 false, i2 1}
!192 = !{!45, !52, i1 false, i2 1}
!193 = distinct !{!193, !23}
!194 = distinct !{!194, !23}
!195 = !{i1 false, !196, i1 false, i2 1}
!196 = !{double 2.000000e+00, double 1.600000e+01}
!197 = !{i1 false, !198, i1 false, i2 1}
!198 = !{double 0.000000e+00, double 2.240000e+02}
!199 = !{i1 false, !200, i1 false, i2 1}
!200 = !{double 2.000000e+00, double 2.260000e+02}
!201 = !{i1 false, !202, i1 false, i2 1}
!202 = !{double 0.000000e+00, double 9.000000e+00}
!203 = !{!56, !202, i1 false, i2 1}
!204 = !{i1 false, !205, i1 false, i2 0}
!205 = !{double 5.000000e+01, double 5.000000e+01}
!206 = !{!171, !205, i1 false, i2 1}
!207 = !{!173, !208, i1 false, i2 1}
!208 = !{double 0.000000e+00, double 1.800000e-01}
!209 = !{!45, !208, i1 false, i2 1}
!210 = !{!45, !54, i1 false, i2 1}
!211 = distinct !{!211, !23}
!212 = distinct !{!212, !23}
!213 = !{!42, !43, i1 false, i2 1}
!214 = distinct !{!214, !23}
!215 = distinct !{!215, !23}
!216 = !{!42, !50, i1 false, i2 1}
!217 = distinct !{!217, !23}
!218 = distinct !{!218, !23}
!219 = !{!56, !1, i1 false, i2 1}
!220 = distinct !{!220, !23}
!221 = distinct !{!221, !23}
!222 = !{i32 -1, i32 -1, i32 3, i32 -1}
!223 = !{i32 1, !82, i32 1, !16, i32 1, !44, i32 1, !224}
!224 = !{i1 false, !225, i1 false, i2 0}
!225 = !{double 4.000000e+00, double 4.000000e+00}
!226 = !{void (i32, i32, float*, i32)* @scale_2d}
!227 = !{!42, !46, i1 false, i2 -1}
!228 = !{!120, !225, i1 false, i2 1}
!229 = !{!230, !231, i1 false, i2 -1}
!230 = !{!"fixp", i32 -32, i32 28}
!231 = !{double 0.000000e+00, double 0x40055556084A515D}
!232 = !{!42, !231, i1 false, i2 -1}
!233 = distinct !{!233, !23}
!234 = distinct !{!234, !23}
!235 = !{i32 1, !82, i32 1, !84, i32 1, !55, i32 1, !224}
!236 = !{!171, !1, i1 false, i2 -1}
!237 = !{!173, !238, i1 false, i2 -1}
!238 = !{double 0.000000e+00, double 0x404BCB068123810F}
!239 = !{!171, !238, i1 false, i2 -1}
!240 = distinct !{!240, !23}
!241 = distinct !{!241, !23}
!242 = !{i32 1, !82, i32 1, !95, i32 1, !41, i32 1, !224}
!243 = !{!230, !244, i1 false, i2 -1}
!244 = !{double 0.000000e+00, double 0x401BBBBB62413DB8}
!245 = !{!120, !244, i1 false, i2 -1}
!246 = distinct !{!246, !23}
!247 = distinct !{!247, !23}
