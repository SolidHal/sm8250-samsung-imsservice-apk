.class public Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;
.super Ljava/lang/Object;
.source "TidGenerator.java"


# static fields
.field private static final CLOCK_SEQ_LIMIT:I = 0x4000

.field private static final CLOCK_SEQ_MASK:I = 0x3fff

.field private static final INTERVAL:J = 0x2710L

.field private static final MULTICAST:J = 0x10000000000L

.field private static final NODE_LIMIT:J = 0x1000000000000L

.field private static final NODE_MASK:J = 0xffffffffffffL

.field private static final OFFSET:J = 0xb1d069b5400L

.field private static final RESERVED:J = -0x8000000000000000L

.field private static final VERSION_NUMBER:J = 0x1000L


# instance fields
.field private mClockSeq:J

.field private final mNode:J

.field private mPrevSysTime:J

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mRandom:Ljava/util/Random;

    .line 33
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x10000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mNode:J

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mRandom:Ljava/util/Random;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    return-void
.end method


# virtual methods
.method public generate()Ljava/util/UUID;
    .locals 19

    .line 39
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 41
    .local v1, "sysTime":J
    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mPrevSysTime:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 42
    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3fff

    and-long/2addr v3, v5

    iput-wide v3, v0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    .line 45
    :cond_0
    const-wide v3, 0xb1d069b5400L

    add-long/2addr v3, v1

    const-wide/16 v5, 0x2710

    mul-long/2addr v3, v5

    .line 47
    .local v3, "time":J
    const-wide/16 v5, -0x1

    and-long/2addr v5, v3

    .line 48
    .local v5, "timeLo":J
    const/16 v7, 0x20

    shr-long v8, v3, v7

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    .line 49
    .local v8, "timeMid":J
    const/16 v10, 0x30

    shr-long v11, v3, v10

    const-wide/16 v13, 0xfff

    and-long/2addr v11, v13

    .line 51
    .local v11, "timeHi":J
    shl-long v13, v5, v7

    const/16 v7, 0x10

    shl-long v15, v8, v7

    or-long/2addr v13, v15

    or-long/2addr v13, v11

    const-wide/16 v15, 0x1000

    or-long/2addr v13, v15

    .line 52
    .local v13, "mostSigBits":J
    move-wide v15, v3

    .end local v3    # "time":J
    .local v15, "time":J
    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    shl-long/2addr v3, v10

    const-wide/high16 v17, -0x8000000000000000L

    or-long v3, v3, v17

    move-wide/from16 v17, v5

    .end local v5    # "timeLo":J
    .local v17, "timeLo":J
    iget-wide v5, v0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mNode:J

    or-long/2addr v3, v5

    .line 54
    .local v3, "leastSigBits":J
    iput-wide v1, v0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mPrevSysTime:J

    .line 56
    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v13, v14, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v5
.end method
