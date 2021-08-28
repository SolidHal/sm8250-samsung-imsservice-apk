.class public Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;
.super Ljava/lang/Object;
.source "TMOVariables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/helper/TMOVariables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TmoMessageSyncPeriod"
.end annotation


# static fields
.field public static CALL_LOG:J

.field public static FAX:J

.field public static GREETING:J

.field public static MESSAGE:J

.field public static PUSH_SYNC_DELAY:J

.field public static VVM:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->VVM:J

    .line 15
    sput-wide v0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->MESSAGE:J

    .line 16
    sput-wide v0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->CALL_LOG:J

    .line 17
    sput-wide v0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->FAX:J

    .line 18
    sput-wide v0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->GREETING:J

    .line 19
    sput-wide v0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->PUSH_SYNC_DELAY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
