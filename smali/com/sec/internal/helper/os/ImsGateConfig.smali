.class public Lcom/sec/internal/helper/os/ImsGateConfig;
.super Ljava/lang/Object;
.source "ImsGateConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGateEnabled()Z
    .locals 1

    .line 7
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    return v0
.end method
