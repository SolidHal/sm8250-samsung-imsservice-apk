.class public Lcom/sec/internal/constants/ims/VowifiConfig;
.super Landroid/os/Handler;
.source "VowifiConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/VowifiConfig$ROAM_PREF;,
        Lcom/sec/internal/constants/ims/VowifiConfig$HOME_PREF;,
        Lcom/sec/internal/constants/ims/VowifiConfig$STATUS;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VowifiConfig"

.field public static final UNKNOWN:I = -0x1

.field public static final WIFI_CALL_ENABLE:Ljava/lang/String; = "wifi_call_enable"

.field public static final WIFI_CALL_PREFERRED:Ljava/lang/String; = "wifi_call_preferred"

.field public static final WIFI_CALL_WHEN_ROAMING:Ljava/lang/String; = "wifi_call_when_roaming"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static getPrefMode(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I

    .line 43
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-static {p0, p1, v0}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static getPrefMode(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I
    .param p2, "phoneId"    # I

    .line 39
    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallPreferred(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static getRoamPrefMode(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I
    .param p2, "phoneId"    # I

    .line 47
    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallWhenRoaming(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallEnabled(Landroid/content/Context;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static setEnabled(Landroid/content/Context;II)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vowifiStatus"    # I
    .param p2, "phoneId"    # I

    .line 51
    invoke-static {p0, p2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallEnabled(Landroid/content/Context;II)V

    .line 52
    return-void
.end method

.method public static setPrefMode(Landroid/content/Context;II)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # I
    .param p2, "phoneId"    # I

    .line 55
    invoke-static {p0, p2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallPreferred(Landroid/content/Context;II)V

    .line 56
    return-void
.end method

.method public static setRoamPrefMode(Landroid/content/Context;II)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # I
    .param p2, "phoneId"    # I

    .line 59
    invoke-static {p0, p2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallWhenRoaming(Landroid/content/Context;II)V

    .line 60
    return-void
.end method
