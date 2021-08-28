.class public final Lcom/sec/icdverification/ICDVerification;
.super Ljava/lang/Object;
.source "ICDVerification.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    :try_start_0
    const-string v0, "get.icd.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ICDVerification"

    const-string v2, "get_icd load Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static final check()I
    .locals 3

    .line 31
    const-string/jumbo v0, "ro.product.cpu.abi"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "multi"

    const-string v2, "false"

    invoke-static {v1, v0, v2}, Lcom/sec/icdverification/ICDVerification;->getTamperflag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native getTamperflag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
