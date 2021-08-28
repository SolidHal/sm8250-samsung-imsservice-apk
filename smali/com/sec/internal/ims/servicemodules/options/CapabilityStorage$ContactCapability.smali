.class final Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$ContactCapability;
.super Ljava/lang/Object;
.source "CapabilityStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactCapability"
.end annotation


# static fields
.field static final CAPABLE_NONE:I = 0x0

.field static final CAPABLE_NULL:I = -0x1

.field static final RCS_CAPABLE_ONLY:I = 0x1

.field static final VIDEO_CAPA_ON_AVA_OFF:I = 0x7

.field static final VIDEO_CAPA_ON_AVA_ON:I = 0x6


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
