; ModuleID = './build/bin/fixed/syr2k/24/syr2k-standard-1-fixed-24.out.ll.3.taffotmp.ll'
source_filename = "./sources/syr2k.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.9 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %alpha = alloca float, align 4, !taffo.info !28, !taffo.initweight !31
  %beta = alloca float, align 4, !taffo.info !32, !taffo.initweight !31
  %C = alloca [16 x [16 x float]], align 4, !taffo.info !34, !taffo.initweight !31, !taffo.target !36
  %A = alloca [16 x [10 x float]], align 4, !taffo.info !37, !taffo.initweight !31
  %B = alloca [16 x [10 x float]], align 4, !taffo.info !40, !taffo.initweight !31
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !42, !taffo.initweight !43
  %beta2 = bitcast float* %beta to i8*, !taffo.info !42, !taffo.initweight !43
  %C3 = bitcast [16 x [16 x float]]* %C to i8*, !taffo.info !44, !taffo.initweight !43, !taffo.target !36
  %A4 = bitcast [16 x [10 x float]]* %A to i8*, !taffo.info !45, !taffo.initweight !43
  %B5 = bitcast [16 x [10 x float]]* %B to i8*, !taffo.info !45, !taffo.initweight !43
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !34, !taffo.initweight !43, !taffo.target !36
  %arraydecay6 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !37, !taffo.initweight !43
  %arraydecay7 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !40, !taffo.initweight !43
  call void @init_array.2(i32 noundef 16, i32 noundef 10, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay6, [10 x float]* noundef %arraydecay7), !taffo.info !46, !taffo.initweight !43, !taffo.constinfo !47, !taffo.originalCall !48
  call void @timer_start(), !taffo.constinfo !49
  %0 = load float, float* %alpha, align 4, !taffo.info !28, !taffo.initweight !43
  %1 = load float, float* %beta, align 4, !taffo.info !50, !taffo.initweight !43
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !34, !taffo.initweight !43, !taffo.target !36
  %arraydecay9 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !37, !taffo.initweight !43
  %arraydecay10 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !40, !taffo.initweight !43
  call void @kernel_syr2k.1(i32 noundef 16, i32 noundef 10, float noundef %0, float noundef %1, [16 x float]* noundef %arraydecay8, [10 x float]* noundef %arraydecay9, [10 x float]* noundef %arraydecay10), !taffo.info !46, !taffo.initweight !51, !taffo.constinfo !47, !taffo.originalCall !52
  call void @timer_stop(), !taffo.constinfo !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !55
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !57
  %cmp12 = icmp slt i32 %j.0, 16, !taffo.info !55
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 %i.0, !taffo.info !34, !taffo.initweight !43, !taffo.target !36
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !51, !taffo.target !36
  %2 = load float, float* %arrayidx14, align 4, !taffo.info !34, !taffo.initweight !59, !taffo.target !36
  %arrayidx15 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.info !0
  store float %2, float* %arrayidx16, align 4, !taffo.info !60, !taffo.initweight !61, !taffo.target !36
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %inc = add nsw i32 %j.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !64

for.end:                                          ; preds = %for.cond11
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !67

for.end19:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !68
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !25 !taffo.funinfo !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !55
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !72
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !55
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !72
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !74
  %add = add nsw i32 %mul, %j.0, !taffo.info !74
  %rem = srem i32 %add, 20, !taffo.info !74, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !72
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !68
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !76
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !77

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !78

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k.1(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !79 !taffo.funinfo !80 !taffo.sourceFunction !52 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ], !taffo.info !55
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !72
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !55
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !55
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !34, !taffo.initweight !81
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !82
  %0 = load float, float* %arrayidx4, align 4, !taffo.info !34, !taffo.initweight !83
  %mul = fmul float %0, %beta, !taffo.info !84, !taffo.initweight !81
  store float %mul, float* %arrayidx4, align 4, !taffo.info !86, !taffo.initweight !82
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !87

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !55
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !72
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc27, %for.inc26 ], !taffo.info !55
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !55
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %j.1, !taffo.info !37, !taffo.initweight !81
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.info !37, !taffo.initweight !82
  %1 = load float, float* %arrayidx12, align 4, !taffo.info !88, !taffo.initweight !83
  %mul13 = fmul float %1, %alpha, !taffo.info !89, !taffo.initweight !81
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.0, !taffo.info !40, !taffo.initweight !81
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %k.0, !taffo.info !40, !taffo.initweight !82
  %2 = load float, float* %arrayidx15, align 4, !taffo.info !91, !taffo.initweight !83
  %mul16 = fmul float %mul13, %2, !taffo.info !92, !taffo.initweight !82
  %arrayidx17 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %j.1, !taffo.info !40, !taffo.initweight !81
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx17, i32 0, i32 %k.0, !taffo.info !40, !taffo.initweight !82
  %3 = load float, float* %arrayidx18, align 4, !taffo.info !91, !taffo.initweight !83
  %mul19 = fmul float %3, %alpha, !taffo.info !94, !taffo.initweight !81
  %arrayidx20 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !37, !taffo.initweight !81
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx20, i32 0, i32 %k.0, !taffo.info !37, !taffo.initweight !82
  %4 = load float, float* %arrayidx21, align 4, !taffo.info !88, !taffo.initweight !83
  %mul22 = fmul float %mul19, %4, !taffo.info !92, !taffo.initweight !82
  %add = fadd float %mul16, %mul22, !taffo.info !96, !taffo.initweight !83
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !34, !taffo.initweight !81
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx23, i32 0, i32 %j.1, !taffo.info !34, !taffo.initweight !82
  %5 = load float, float* %arrayidx24, align 4, !taffo.info !34, !taffo.initweight !83
  %add25 = fadd float %5, %add, !taffo.info !98, !taffo.initweight !100
  store float %add25, float* %arrayidx24, align 4, !taffo.info !60, !taffo.initweight !83
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !101

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %k.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !102

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %inc33 = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !103

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !104 !taffo.funinfo !105 !taffo.sourceFunction !48 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !46, !taffo.initweight !61, !taffo.constinfo !106
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !86, !taffo.initweight !61, !taffo.constinfo !108
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !111, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !112, !taffo.initweight !51
  br i1 %cmp, label %for.body, label %for.end18, !taffo.info !113, !taffo.initweight !59

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !115, !taffo.initweight !31
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !112, !taffo.initweight !51
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !117, !taffo.initweight !59

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !118, !taffo.initweight !51
  %add = add nsw i32 %mul, 1, !taffo.info !120, !taffo.initweight !59, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !122, !taffo.initweight !61
  %conv = sitofp i32 %rem to float, !taffo.info !124, !taffo.initweight !81
  %conv6 = sitofp i32 %n to float, !taffo.info !125
  %div = fdiv float %conv, %conv6, !taffo.info !127, !taffo.initweight !82
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !127, !taffo.initweight !51
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !127, !taffo.initweight !51
  store float %div, float* %arrayidx7, align 4, !taffo.info !128, !taffo.initweight !59
  %mul8 = mul nsw i32 %i.0, %j.0, !taffo.info !118, !taffo.initweight !51
  %add9 = add nsw i32 %mul8, 2, !taffo.info !129, !taffo.initweight !59, !taffo.constinfo !21
  %rem10 = srem i32 %add9, %m, !taffo.info !131, !taffo.initweight !61
  %conv11 = sitofp i32 %rem10 to float, !taffo.info !133, !taffo.initweight !81
  %conv12 = sitofp i32 %m to float, !taffo.info !134
  %div13 = fdiv float %conv11, %conv12, !taffo.info !135, !taffo.initweight !82
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.0, !taffo.info !135, !taffo.initweight !51
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !135, !taffo.initweight !51
  store float %div13, float* %arrayidx15, align 4, !taffo.info !128, !taffo.initweight !59
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !136, !taffo.initweight !51, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !138

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !139, !taffo.initweight !51, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !140

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc39, %for.inc38 ], !taffo.info !111, !taffo.initweight !31
  %cmp20 = icmp slt i32 %i.1, %n, !taffo.info !112, !taffo.initweight !51
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.info !113, !taffo.initweight !59

for.body22:                                       ; preds = %for.cond19
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc36, %for.inc35 ], !taffo.info !115, !taffo.initweight !31
  %cmp24 = icmp slt i32 %j.1, %n, !taffo.info !141, !taffo.initweight !51
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.info !117, !taffo.initweight !59

for.body26:                                       ; preds = %for.cond23
  %mul27 = mul nsw i32 %i.1, %j.1, !taffo.info !118, !taffo.initweight !51
  %add28 = add nsw i32 %mul27, 3, !taffo.info !142, !taffo.initweight !59, !taffo.constinfo !21
  %rem29 = srem i32 %add28, %n, !taffo.info !122, !taffo.initweight !61
  %conv30 = sitofp i32 %rem29 to float, !taffo.info !124, !taffo.initweight !81
  %conv31 = sitofp i32 %m to float, !taffo.info !134
  %div32 = fdiv float %conv30, %conv31, !taffo.info !144, !taffo.initweight !82
  %arrayidx33 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.1, !taffo.info !146, !taffo.initweight !51
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.info !146, !taffo.initweight !51
  store float %div32, float* %arrayidx34, align 4, !taffo.info !128, !taffo.initweight !59
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %inc36 = add nsw i32 %j.1, 1, !taffo.info !136, !taffo.initweight !51, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !147

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %inc39 = add nsw i32 %i.1, 1, !taffo.info !139, !taffo.initweight !51, !taffo.constinfo !21
  br label %for.cond19, !llvm.loop !148

for.end40:                                        ; preds = %for.cond19
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x4022180000000000}
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
!24 = !{}
!25 = !{i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false}
!27 = !{i1 true}
!28 = !{!29, !30, i1 false, i2 -1}
!29 = !{!"fixp", i32 32, i32 30}
!30 = !{double 1.500000e+00, double 1.500000e+00}
!31 = !{i32 0}
!32 = !{!29, !33, i1 false, i2 -1}
!33 = !{double 1.200000e+00, double 1.200000e+00}
!34 = !{!35, !1, i1 false, i2 -1}
!35 = !{!"fixp", i32 32, i32 28}
!36 = !{!"C"}
!37 = !{!38, !39, i1 false, i2 -1}
!38 = !{!"fixp", i32 32, i32 31}
!39 = !{double 0.000000e+00, double 9.375000e-01}
!40 = !{!38, !41, i1 false, i2 -1}
!41 = !{double 0.000000e+00, double 9.000000e-01}
!42 = !{!29, i1 false, i1 false, i2 -1}
!43 = !{i32 1}
!44 = !{!35, i1 false, i1 false, i2 -1}
!45 = !{!38, i1 false, i1 false, i2 -1}
!46 = !{i1 false, !30, i1 false, i2 -1}
!47 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!48 = distinct !{null}
!49 = !{i1 false}
!50 = !{!35, !33, i1 false, i2 -1}
!51 = !{i32 2}
!52 = distinct !{null}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 1.700000e+01}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 0.000000e+00, double 1.000000e+00}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 0.000000e+00, double 2.890000e+02}
!59 = !{i32 3}
!60 = !{i1 false, !1, i1 false, i2 -1}
!61 = !{i32 4}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 2.890000e+02}
!64 = distinct !{!64, !23}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.000000e+00, double 1.700000e+01}
!67 = distinct !{!67, !23}
!68 = !{i1 false, i1 false, i1 false}
!69 = !{i32 1, !70, i32 1, !0}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 1.600000e+01, double 1.600000e+01}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.000000e+00, double 1.000000e+00}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0.000000e+00, double 0.000000e+00}
!76 = !{i1 false, i1 false, i1 false, i1 false}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, !23}
!79 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!80 = !{i32 1, !70, i32 1, !16, i32 1, !28, i32 1, !50, i32 1, !34, i32 1, !37, i32 1, !40}
!81 = !{i32 5}
!82 = !{i32 6}
!83 = !{i32 7}
!84 = !{!35, !85, i1 false, i2 -1}
!85 = !{double 0.000000e+00, double 0x4025B66666666666}
!86 = !{i1 false, !33, i1 false, i2 -1}
!87 = distinct !{!87, !23}
!88 = !{!29, !39, i1 false, i2 -1}
!89 = !{!29, !90, i1 false, i2 -1}
!90 = !{double 0.000000e+00, double 1.406250e+00}
!91 = !{!29, !41, i1 false, i2 -1}
!92 = !{!29, !93, i1 false, i2 -1}
!93 = !{double 0.000000e+00, double 0x3FF4400000000000}
!94 = !{!29, !95, i1 false, i2 -1}
!95 = !{double 0.000000e+00, double 1.350000e+00}
!96 = !{!35, !97, i1 false, i2 -1}
!97 = !{double 0.000000e+00, double 2.531250e+00}
!98 = !{!35, !99, i1 false, i2 -1}
!99 = !{double 0.000000e+00, double 0x4027280000000000}
!100 = !{i32 8}
!101 = distinct !{!101, !23}
!102 = distinct !{!102, !23}
!103 = distinct !{!103, !23}
!104 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!105 = !{i32 1, !70, i32 1, !16, i32 1, !28, i32 1, !32, i32 1, !34, i32 1, !37, i32 1, !40}
!106 = !{!107, i1 false}
!107 = !{i1 false, !30, i1 false, i2 0}
!108 = !{!109, i1 false}
!109 = !{i1 false, !110, i1 false, i2 0}
!110 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!111 = !{i1 false, !54, i1 false, i2 1}
!112 = !{i1 false, !56, i1 false, i2 1}
!113 = !{i1 false, !114, i1 false, i2 1}
!114 = !{double 0.000000e+00, double 1.600000e+01}
!115 = !{i1 false, !116, i1 false, i2 1}
!116 = !{double 0.000000e+00, double 1.100000e+01}
!117 = !{i1 false, !3, i1 false, i2 1}
!118 = !{i1 false, !119, i1 false, i2 1}
!119 = !{double 0.000000e+00, double 1.600000e+02}
!120 = !{i1 false, !121, i1 false, i2 1}
!121 = !{double 1.000000e+00, double 1.610000e+02}
!122 = !{i1 false, !123, i1 false, i2 1}
!123 = !{double 0.000000e+00, double 1.500000e+01}
!124 = !{!35, !123, i1 false, i2 1}
!125 = !{!126, !71, i1 false, i2 1}
!126 = !{!"fixp", i32 32, i32 27}
!127 = !{!38, !39, i1 false, i2 1}
!128 = !{i1 false, i1 false, i1 false, i2 1}
!129 = !{i1 false, !130, i1 false, i2 1}
!130 = !{double 2.000000e+00, double 1.620000e+02}
!131 = !{i1 false, !132, i1 false, i2 1}
!132 = !{double 0.000000e+00, double 9.000000e+00}
!133 = !{!35, !132, i1 false, i2 1}
!134 = !{!35, !17, i1 false, i2 1}
!135 = !{!38, !41, i1 false, i2 1}
!136 = !{i1 false, !137, i1 false, i2 1}
!137 = !{double 1.000000e+00, double 1.100000e+01}
!138 = distinct !{!138, !23}
!139 = !{i1 false, !66, i1 false, i2 1}
!140 = distinct !{!140, !23}
!141 = !{i1 false, !73, i1 false, i2 1}
!142 = !{i1 false, !143, i1 false, i2 1}
!143 = !{double 3.000000e+00, double 1.630000e+02}
!144 = !{!35, !145, i1 false, i2 1}
!145 = !{double 0.000000e+00, double 1.500000e+00}
!146 = !{!35, !1, i1 false, i2 1}
!147 = distinct !{!147, !23}
!148 = distinct !{!148, !23}
