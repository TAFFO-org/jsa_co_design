; ModuleID = './build/bin/fixed/heat-3d/16/heat-3d-standard-1-fixed-16.out.ll.3.taffotmp.ll'
source_filename = "./sources/heat-3d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [5 x [5 x [5 x float]]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
define dso_local void @timer_start() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.start !27 {
entry:
  %A = alloca [5 x [5 x [5 x float]]], align 4, !taffo.info !28, !taffo.initweight !31, !taffo.target !32
  %B = alloca [5 x [5 x [5 x float]]], align 4, !taffo.info !28, !taffo.initweight !31
  %A1 = bitcast [5 x [5 x [5 x float]]]* %A to i8*, !taffo.info !33, !taffo.initweight !34, !taffo.target !32
  %B2 = bitcast [5 x [5 x [5 x float]]]* %B to i8*, !taffo.info !33, !taffo.initweight !34
  %arraydecay = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !34, !taffo.target !32
  %arraydecay3 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i32 0, i32 0, !taffo.info !28, !taffo.initweight !34
  call void @init_array.2(i32 noundef 5, [5 x [5 x float]]* noundef %arraydecay, [5 x [5 x float]]* noundef %arraydecay3), !taffo.info !35, !taffo.initweight !36, !taffo.constinfo !37, !taffo.target !32, !taffo.originalCall !38
  call void @timer_start(), !taffo.constinfo !39
  %arraydecay4 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !34, !taffo.target !32
  %arraydecay5 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i32 0, i32 0, !taffo.info !28, !taffo.initweight !34
  call void @kernel_heat_3d.1(i32 noundef 10, i32 noundef 5, [5 x [5 x float]]* noundef %arraydecay4, [5 x [5 x float]]* noundef %arraydecay5), !taffo.info !35, !taffo.initweight !36, !taffo.constinfo !40, !taffo.target !32, !taffo.originalCall !41
  call void @timer_stop(), !taffo.constinfo !39
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !42
  %cmp = icmp slt i32 %i.0, 5, !taffo.info !44
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !46
  %cmp7 = icmp slt i32 %j.0, 5, !taffo.info !44
  br i1 %cmp7, label %for.body8, label %for.end19

for.body8:                                        ; preds = %for.cond6
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body8
  %k.0 = phi i32 [ 0, %for.body8 ], [ %inc, %for.inc ], !taffo.info !48
  %cmp10 = icmp slt i32 %k.0, 5, !taffo.info !44
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %arrayidx = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 %i.0, !taffo.info !28, !taffo.initweight !34, !taffo.target !32
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !36, !taffo.target !32
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !50, !taffo.target !32
  %0 = load float, float* %arrayidx13, align 4, !taffo.info !28, !taffo.initweight !51, !taffo.target !32
  %arrayidx14 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !0
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.info !0
  store float %0, float* %arrayidx16, align 4, !taffo.info !35, !taffo.initweight !52, !taffo.target !32
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %k.0, 1, !taffo.info !53, !taffo.constinfo !21
  br label %for.cond9, !llvm.loop !55

for.end:                                          ; preds = %for.cond9
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !58

for.end19:                                        ; preds = %for.cond6
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !61

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 5, [5 x [5 x float]]* noundef getelementptr inbounds ([5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 0)), !taffo.constinfo !62
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [5 x [5 x float]]* noundef %A) #0 !taffo.initweight !25 !taffo.funinfo !63 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !44
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !66
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !44
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !66
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !44
  %cmp5 = icmp slt i32 %k.0, %n, !taffo.info !66
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %i.0, %n, !taffo.info !68
  %mul7 = mul nsw i32 %mul, %n, !taffo.info !68
  %mul8 = mul nsw i32 %j.0, %n, !taffo.info !68
  %add = add nsw i32 %mul7, %mul8, !taffo.info !68
  %add9 = add nsw i32 %add, %k.0, !taffo.info !68
  %rem = srem i32 %add9, 20, !taffo.info !68, !taffo.constinfo !21
  %cmp10 = icmp eq i32 %rem, 0, !taffo.info !66
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !62
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !0
  %arrayidx11 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %arrayidx12 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.info !0
  %2 = load float, float* %arrayidx12, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !37
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %k.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !70

for.end:                                          ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !71

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !72

for.end19:                                        ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d.1(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.initweight !73 !taffo.funinfo !74 !taffo.sourceFunction !41 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc144, %entry
  %t.0 = phi i32 [ 1, %entry ], [ %inc145, %for.inc144 ], !taffo.info !75
  %cmp = icmp sle i32 %t.0, 10, !taffo.info !44
  br i1 %cmp, label %for.body, label %for.end146

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc66, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc67, %for.inc66 ], !taffo.info !75
  %sub = sub nsw i32 %n, 1, !taffo.info !77, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !44
  br i1 %cmp2, label %for.body3, label %for.end68

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc63, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc64, %for.inc63 ], !taffo.info !75
  %sub5 = sub nsw i32 %n, 1, !taffo.info !77, !taffo.constinfo !21
  %cmp6 = icmp slt i32 %j.0, %sub5, !taffo.info !44
  br i1 %cmp6, label %for.body7, label %for.end65

for.body7:                                        ; preds = %for.cond4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %k.0 = phi i32 [ 1, %for.body7 ], [ %inc, %for.inc ], !taffo.info !75
  %sub9 = sub nsw i32 %n, 1, !taffo.info !77, !taffo.constinfo !21
  %cmp10 = icmp slt i32 %k.0, %sub9, !taffo.info !44
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %add = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !21
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %add, !taffo.info !28, !taffo.initweight !52
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !81
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !82
  %0 = load float, float* %arrayidx13, align 4, !taffo.info !28, !taffo.initweight !83
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !52
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !81
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !82
  %1 = load float, float* %arrayidx16, align 4, !taffo.info !84, !taffo.initweight !83
  %mul = fmul float 2.000000e+00, %1, !taffo.info !86, !taffo.initweight !89, !taffo.constinfo !18
  %sub17 = fsub float %0, %mul, !taffo.info !90, !taffo.initweight !89
  %sub18 = sub nsw i32 %i.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %sub18, !taffo.info !28, !taffo.initweight !52
  %arrayidx20 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx19, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !81
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx20, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !82
  %2 = load float, float* %arrayidx21, align 4, !taffo.info !28, !taffo.initweight !83
  %add22 = fadd float %sub17, %2, !taffo.info !92, !taffo.initweight !89
  %mul23 = fmul float 1.250000e-01, %add22, !taffo.info !94, !taffo.initweight !97, !taffo.constinfo !98
  %arrayidx24 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !52
  %add25 = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !21
  %arrayidx26 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx24, i32 0, i32 %add25, !taffo.info !28, !taffo.initweight !81
  %arrayidx27 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx26, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !82
  %3 = load float, float* %arrayidx27, align 4, !taffo.info !28, !taffo.initweight !83
  %arrayidx28 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !52
  %arrayidx29 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx28, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !81
  %arrayidx30 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx29, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !82
  %4 = load float, float* %arrayidx30, align 4, !taffo.info !84, !taffo.initweight !83
  %mul31 = fmul float 2.000000e+00, %4, !taffo.info !86, !taffo.initweight !89, !taffo.constinfo !18
  %sub32 = fsub float %3, %mul31, !taffo.info !90, !taffo.initweight !89
  %arrayidx33 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !52
  %sub34 = sub nsw i32 %j.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx35 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx33, i32 0, i32 %sub34, !taffo.info !28, !taffo.initweight !81
  %arrayidx36 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx35, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !82
  %5 = load float, float* %arrayidx36, align 4, !taffo.info !28, !taffo.initweight !83
  %add37 = fadd float %sub32, %5, !taffo.info !92, !taffo.initweight !89
  %mul38 = fmul float 1.250000e-01, %add37, !taffo.info !94, !taffo.initweight !97, !taffo.constinfo !98
  %add39 = fadd float %mul23, %mul38, !taffo.info !101, !taffo.initweight !104
  %arrayidx40 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !52
  %arrayidx41 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx40, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !81
  %add42 = add nsw i32 %k.0, 1, !taffo.info !79, !taffo.constinfo !21
  %arrayidx43 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx41, i32 0, i32 %add42, !taffo.info !28, !taffo.initweight !82
  %6 = load float, float* %arrayidx43, align 4, !taffo.info !28, !taffo.initweight !83
  %arrayidx44 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !52
  %arrayidx45 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx44, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !81
  %arrayidx46 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx45, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !82
  %7 = load float, float* %arrayidx46, align 4, !taffo.info !84, !taffo.initweight !83
  %mul47 = fmul float 2.000000e+00, %7, !taffo.info !86, !taffo.initweight !89, !taffo.constinfo !18
  %sub48 = fsub float %6, %mul47, !taffo.info !90, !taffo.initweight !89
  %arrayidx49 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !52
  %arrayidx50 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx49, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !81
  %sub51 = sub nsw i32 %k.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx52 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx50, i32 0, i32 %sub51, !taffo.info !28, !taffo.initweight !82
  %8 = load float, float* %arrayidx52, align 4, !taffo.info !28, !taffo.initweight !83
  %add53 = fadd float %sub48, %8, !taffo.info !92, !taffo.initweight !89
  %mul54 = fmul float 1.250000e-01, %add53, !taffo.info !105, !taffo.initweight !97, !taffo.constinfo !98
  %add55 = fadd float %add39, %mul54, !taffo.info !106, !taffo.initweight !104
  %arrayidx56 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !52
  %arrayidx57 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx56, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !81
  %arrayidx58 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx57, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !82
  %9 = load float, float* %arrayidx58, align 4, !taffo.info !28, !taffo.initweight !83
  %add59 = fadd float %add55, %9, !taffo.info !108, !taffo.initweight !89
  %arrayidx60 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.0, !taffo.info !28, !taffo.initweight !52
  %arrayidx61 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx60, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !81
  %arrayidx62 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx61, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !82
  store float %add59, float* %arrayidx62, align 4, !taffo.info !35, !taffo.initweight !83
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %k.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !110

for.end:                                          ; preds = %for.cond8
  br label %for.inc63

for.inc63:                                        ; preds = %for.end
  %inc64 = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !111

for.end65:                                        ; preds = %for.cond4
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %inc67 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !112

for.end68:                                        ; preds = %for.cond1
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc141, %for.end68
  %i.1 = phi i32 [ 1, %for.end68 ], [ %inc142, %for.inc141 ], !taffo.info !75
  %sub70 = sub nsw i32 %n, 1, !taffo.info !77, !taffo.constinfo !21
  %cmp71 = icmp slt i32 %i.1, %sub70, !taffo.info !44
  br i1 %cmp71, label %for.body72, label %for.end143

for.body72:                                       ; preds = %for.cond69
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc138, %for.body72
  %j.1 = phi i32 [ 1, %for.body72 ], [ %inc139, %for.inc138 ], !taffo.info !75
  %sub74 = sub nsw i32 %n, 1, !taffo.info !77, !taffo.constinfo !21
  %cmp75 = icmp slt i32 %j.1, %sub74, !taffo.info !44
  br i1 %cmp75, label %for.body76, label %for.end140

for.body76:                                       ; preds = %for.cond73
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc135, %for.body76
  %k.1 = phi i32 [ 1, %for.body76 ], [ %inc136, %for.inc135 ], !taffo.info !75
  %sub78 = sub nsw i32 %n, 1, !taffo.info !77, !taffo.constinfo !21
  %cmp79 = icmp slt i32 %k.1, %sub78, !taffo.info !44
  br i1 %cmp79, label %for.body80, label %for.end137

for.body80:                                       ; preds = %for.cond77
  %add81 = add nsw i32 %i.1, 1, !taffo.info !79, !taffo.constinfo !21
  %arrayidx82 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %add81, !taffo.info !28, !taffo.initweight !52
  %arrayidx83 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx82, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !81
  %arrayidx84 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx83, i32 0, i32 %k.1, !taffo.info !28, !taffo.initweight !82
  %10 = load float, float* %arrayidx84, align 4, !taffo.info !28, !taffo.initweight !83
  %arrayidx85 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !28, !taffo.initweight !52
  %arrayidx86 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx85, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !81
  %arrayidx87 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx86, i32 0, i32 %k.1, !taffo.info !28, !taffo.initweight !82
  %11 = load float, float* %arrayidx87, align 4, !taffo.info !84, !taffo.initweight !83
  %mul88 = fmul float 2.000000e+00, %11, !taffo.info !86, !taffo.initweight !89, !taffo.constinfo !18
  %sub89 = fsub float %10, %mul88, !taffo.info !90, !taffo.initweight !89
  %sub90 = sub nsw i32 %i.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx91 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %sub90, !taffo.info !28, !taffo.initweight !52
  %arrayidx92 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx91, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !81
  %arrayidx93 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx92, i32 0, i32 %k.1, !taffo.info !28, !taffo.initweight !82
  %12 = load float, float* %arrayidx93, align 4, !taffo.info !28, !taffo.initweight !83
  %add94 = fadd float %sub89, %12, !taffo.info !92, !taffo.initweight !89
  %mul95 = fmul float 1.250000e-01, %add94, !taffo.info !94, !taffo.initweight !97, !taffo.constinfo !98
  %arrayidx96 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !28, !taffo.initweight !52
  %add97 = add nsw i32 %j.1, 1, !taffo.info !79, !taffo.constinfo !21
  %arrayidx98 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx96, i32 0, i32 %add97, !taffo.info !28, !taffo.initweight !81
  %arrayidx99 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx98, i32 0, i32 %k.1, !taffo.info !28, !taffo.initweight !82
  %13 = load float, float* %arrayidx99, align 4, !taffo.info !28, !taffo.initweight !83
  %arrayidx100 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !28, !taffo.initweight !52
  %arrayidx101 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx100, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !81
  %arrayidx102 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx101, i32 0, i32 %k.1, !taffo.info !28, !taffo.initweight !82
  %14 = load float, float* %arrayidx102, align 4, !taffo.info !84, !taffo.initweight !83
  %mul103 = fmul float 2.000000e+00, %14, !taffo.info !86, !taffo.initweight !89, !taffo.constinfo !18
  %sub104 = fsub float %13, %mul103, !taffo.info !90, !taffo.initweight !89
  %arrayidx105 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !28, !taffo.initweight !52
  %sub106 = sub nsw i32 %j.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx107 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx105, i32 0, i32 %sub106, !taffo.info !28, !taffo.initweight !81
  %arrayidx108 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx107, i32 0, i32 %k.1, !taffo.info !28, !taffo.initweight !82
  %15 = load float, float* %arrayidx108, align 4, !taffo.info !28, !taffo.initweight !83
  %add109 = fadd float %sub104, %15, !taffo.info !92, !taffo.initweight !89
  %mul110 = fmul float 1.250000e-01, %add109, !taffo.info !94, !taffo.initweight !97, !taffo.constinfo !98
  %add111 = fadd float %mul95, %mul110, !taffo.info !101, !taffo.initweight !104
  %arrayidx112 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !28, !taffo.initweight !52
  %arrayidx113 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx112, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !81
  %add114 = add nsw i32 %k.1, 1, !taffo.info !79, !taffo.constinfo !21
  %arrayidx115 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx113, i32 0, i32 %add114, !taffo.info !28, !taffo.initweight !82
  %16 = load float, float* %arrayidx115, align 4, !taffo.info !28, !taffo.initweight !83
  %arrayidx116 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !28, !taffo.initweight !52
  %arrayidx117 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx116, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !81
  %arrayidx118 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx117, i32 0, i32 %k.1, !taffo.info !28, !taffo.initweight !82
  %17 = load float, float* %arrayidx118, align 4, !taffo.info !84, !taffo.initweight !83
  %mul119 = fmul float 2.000000e+00, %17, !taffo.info !86, !taffo.initweight !89, !taffo.constinfo !18
  %sub120 = fsub float %16, %mul119, !taffo.info !90, !taffo.initweight !89
  %arrayidx121 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !28, !taffo.initweight !52
  %arrayidx122 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx121, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !81
  %sub123 = sub nsw i32 %k.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx124 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx122, i32 0, i32 %sub123, !taffo.info !28, !taffo.initweight !82
  %18 = load float, float* %arrayidx124, align 4, !taffo.info !28, !taffo.initweight !83
  %add125 = fadd float %sub120, %18, !taffo.info !92, !taffo.initweight !89
  %mul126 = fmul float 1.250000e-01, %add125, !taffo.info !105, !taffo.initweight !97, !taffo.constinfo !98
  %add127 = fadd float %add111, %mul126, !taffo.info !106, !taffo.initweight !104
  %arrayidx128 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !28, !taffo.initweight !52
  %arrayidx129 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx128, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !81
  %arrayidx130 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx129, i32 0, i32 %k.1, !taffo.info !28, !taffo.initweight !82
  %19 = load float, float* %arrayidx130, align 4, !taffo.info !28, !taffo.initweight !83
  %add131 = fadd float %add127, %19, !taffo.info !108, !taffo.initweight !89
  %arrayidx132 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.1, !taffo.info !28, !taffo.initweight !52
  %arrayidx133 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx132, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !81
  %arrayidx134 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx133, i32 0, i32 %k.1, !taffo.info !28, !taffo.initweight !82
  store float %add131, float* %arrayidx134, align 4, !taffo.info !35, !taffo.initweight !83
  br label %for.inc135

for.inc135:                                       ; preds = %for.body80
  %inc136 = add nsw i32 %k.1, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond77, !llvm.loop !113

for.end137:                                       ; preds = %for.cond77
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %inc139 = add nsw i32 %j.1, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond73, !llvm.loop !114

for.end140:                                       ; preds = %for.cond73
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %inc142 = add nsw i32 %i.1, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond69, !llvm.loop !115

for.end143:                                       ; preds = %for.cond69
  br label %for.inc144

for.inc144:                                       ; preds = %for.end143
  %inc145 = add nsw i32 %t.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !116

for.end146:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.initweight !117 !taffo.funinfo !118 !taffo.sourceFunction !38 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !119, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !121, !taffo.initweight !36
  br i1 %cmp, label %for.body, label %for.end22, !taffo.info !119, !taffo.initweight !50

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !119, !taffo.initweight !31
  %cmp5 = icmp slt i32 %j.0, %n, !taffo.info !121, !taffo.initweight !36
  br i1 %cmp5, label %for.body6, label %for.end19, !taffo.info !119, !taffo.initweight !50

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ], !taffo.info !119, !taffo.initweight !31
  %cmp8 = icmp slt i32 %k.0, %n, !taffo.info !121, !taffo.initweight !36
  br i1 %cmp8, label %for.body9, label %for.end, !taffo.info !119, !taffo.initweight !50

for.body9:                                        ; preds = %for.cond7
  %add = add nsw i32 %i.0, %j.0, !taffo.info !122, !taffo.initweight !36
  %sub = sub nsw i32 %n, %k.0, !taffo.info !124, !taffo.initweight !36
  %add10 = add nsw i32 %add, %sub, !taffo.info !126, !taffo.initweight !50
  %conv = sitofp i32 %add10 to float, !taffo.info !128, !taffo.initweight !51
  %mul = fmul float %conv, 1.000000e+01, !taffo.info !130, !taffo.initweight !52, !taffo.constinfo !15
  %conv11 = sitofp i32 %n to float, !taffo.info !133
  %div = fdiv float %mul, %conv11, !taffo.info !135, !taffo.initweight !81
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.0, !taffo.info !137, !taffo.initweight !36
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.info !137, !taffo.initweight !36
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %k.0, !taffo.info !137, !taffo.initweight !36
  store float %div, float* %arrayidx13, align 4, !taffo.info !138, !taffo.initweight !50
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !137, !taffo.initweight !36
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !137, !taffo.initweight !36
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.info !137, !taffo.initweight !36
  store float %div, float* %arrayidx16, align 4, !taffo.info !138, !taffo.initweight !50
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k.0, 1, !taffo.info !139, !taffo.initweight !36, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !141

for.end:                                          ; preds = %for.cond7
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !139, !taffo.initweight !36, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !142

for.end19:                                        ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !139, !taffo.initweight !36, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !143

for.end22:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 2.600000e+01}
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
!12 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
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
!24 = !{}
!25 = !{i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false}
!27 = !{i1 true}
!28 = !{!29, !30, i1 false, i2 -1}
!29 = !{!"fixp", i32 32, i32 27}
!30 = !{double 2.000000e+00, double 2.600000e+01}
!31 = !{i32 0}
!32 = !{!"A"}
!33 = !{!29, i1 false, i1 false, i2 -1}
!34 = !{i32 1}
!35 = !{i1 false, !30, i1 false, i2 -1}
!36 = !{i32 2}
!37 = !{i1 false, i1 false, i1 false, i1 false}
!38 = distinct !{null}
!39 = !{i1 false}
!40 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!41 = distinct !{null}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 6.000000e+00}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 0.000000e+00, double 1.000000e+00}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0.000000e+00, double 3.600000e+01}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0.000000e+00, double 2.160000e+02}
!50 = !{i32 3}
!51 = !{i32 4}
!52 = !{i32 5}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 1.000000e+00, double 2.160000e+02}
!55 = distinct !{!55, !23}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 3.600000e+01}
!58 = distinct !{!58, !23}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 6.000000e+00}
!61 = distinct !{!61, !23}
!62 = !{i1 false, i1 false, i1 false}
!63 = !{i32 1, !64, i32 1, !0}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 5.000000e+00, double 5.000000e+00}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 1.000000e+00}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 0.000000e+00}
!70 = distinct !{!70, !23}
!71 = distinct !{!71, !23}
!72 = distinct !{!72, !23}
!73 = !{i32 -1, i32 -1, i32 2, i32 2}
!74 = !{i32 1, !16, i32 1, !64, i32 1, !28, i32 1, !28}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 1.000000e+00, double 1.200000e+01}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 4.000000e+00, double 4.000000e+00}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 2.000000e+00, double 1.200000e+01}
!81 = !{i32 6}
!82 = !{i32 7}
!83 = !{i32 8}
!84 = !{!85, !30, i1 false, i2 -1}
!85 = !{!"fixp", i32 32, i32 26}
!86 = !{!87, !88, i1 false, i2 -1}
!87 = !{!"fixp", i32 -32, i32 25}
!88 = !{double 4.000000e+00, double 5.200000e+01}
!89 = !{i32 9}
!90 = !{!87, !91, i1 false, i2 -1}
!91 = !{double -5.000000e+01, double 2.200000e+01}
!92 = !{!87, !93, i1 false, i2 -1}
!93 = !{double -4.800000e+01, double 4.800000e+01}
!94 = !{!95, !96, i1 false, i2 -1}
!95 = !{!"fixp", i32 -32, i32 27}
!96 = !{double -6.000000e+00, double 6.000000e+00}
!97 = !{i32 10}
!98 = !{!99, i1 false}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 1.250000e-01, double 1.250000e-01}
!101 = !{!102, !103, i1 false, i2 -1}
!102 = !{!"fixp", i32 -32, i32 26}
!103 = !{double -1.200000e+01, double 1.200000e+01}
!104 = !{i32 11}
!105 = !{!102, !96, i1 false, i2 -1}
!106 = !{!87, !107, i1 false, i2 -1}
!107 = !{double -1.800000e+01, double 1.800000e+01}
!108 = !{!87, !109, i1 false, i2 -1}
!109 = !{double -1.600000e+01, double 4.400000e+01}
!110 = distinct !{!110, !23}
!111 = distinct !{!111, !23}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = distinct !{!115, !23}
!116 = distinct !{!116, !23}
!117 = !{i32 -1, i32 2, i32 2}
!118 = !{i32 1, !64, i32 1, !28, i32 1, !28}
!119 = !{i1 false, !120, i1 false, i2 -1}
!120 = !{double 0.000000e+00, double 8.000000e+01}
!121 = !{i1 false, !45, i1 false, i2 -1}
!122 = !{i1 false, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 1.600000e+02}
!124 = !{i1 false, !125, i1 false, i2 -1}
!125 = !{double -7.500000e+01, double 5.000000e+00}
!126 = !{i1 false, !127, i1 false, i2 -1}
!127 = !{double -7.500000e+01, double 1.650000e+02}
!128 = !{!129, !127, i1 false, i2 -1}
!129 = !{!"fixp", i32 -32, i32 23}
!130 = !{!131, !132, i1 false, i2 -1}
!131 = !{!"fixp", i32 -32, i32 20}
!132 = !{double -7.500000e+02, double 1.650000e+03}
!133 = !{!134, !65, i1 false, i2 1}
!134 = !{!"fixp", i32 32, i32 29}
!135 = !{!131, !136, i1 false, i2 -1}
!136 = !{double -1.500000e+02, double 3.300000e+02}
!137 = !{!29, !30, i1 false, i2 1}
!138 = !{i1 false, i1 false, i1 false, i2 1}
!139 = !{i1 false, !140, i1 false, i2 -1}
!140 = !{double 1.000000e+00, double 8.100000e+01}
!141 = distinct !{!141, !23}
!142 = distinct !{!142, !23}
!143 = distinct !{!143, !23}
