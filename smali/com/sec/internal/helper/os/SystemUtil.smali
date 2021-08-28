.class public Lcom/sec/internal/helper/os/SystemUtil;
.super Ljava/lang/Object;
.source "SystemUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z
    .locals 1
    .param p0, "emergencyManager"    # Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 8
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x400

    .line 9
    invoke-virtual {p0, v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 8
    :goto_1
    return v0
.end method
