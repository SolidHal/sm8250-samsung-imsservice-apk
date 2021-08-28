.class public Lcom/sec/internal/ims/settings/ImsServiceSwitch$ImsSwitch$DeviceManagement;
.super Ljava/lang/Object;
.source "ImsServiceSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/ImsServiceSwitch$ImsSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceManagement"
.end annotation


# static fields
.field public static final ENABLE_IMS:Ljava/lang/String; = "enableIms"

.field public static final ENABLE_VOWIFI:Ljava/lang/String; = "enableServiceVowifi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
