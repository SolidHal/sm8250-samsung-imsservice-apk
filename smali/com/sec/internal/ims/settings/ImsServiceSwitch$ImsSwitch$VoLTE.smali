.class public Lcom/sec/internal/ims/settings/ImsServiceSwitch$ImsSwitch$VoLTE;
.super Ljava/lang/Object;
.source "ImsServiceSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/ImsServiceSwitch$ImsSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoLTE"
.end annotation


# static fields
.field public static final ENABLE_SMS_IP:Ljava/lang/String; = "enableServiceSmsip"

.field public static final ENABLE_VIDEO_CALL:Ljava/lang/String; = "enableServiceVilte"

.field public static final ENABLE_VOLTE:Ljava/lang/String; = "enableServiceVolte"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
