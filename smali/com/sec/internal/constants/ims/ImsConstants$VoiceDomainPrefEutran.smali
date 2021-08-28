.class public Lcom/sec/internal/constants/ims/ImsConstants$VoiceDomainPrefEutran;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceDomainPrefEutran"
.end annotation


# static fields
.field public static final CS_VOICE_ONLY:I = 0x1

.field public static final CS_VOICE_PREFERRED:I = 0x2

.field public static final IMS_PS_VOICE_ONLY:I = 0x4

.field public static final IMS_PS_VOICE_PREFERRED:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
