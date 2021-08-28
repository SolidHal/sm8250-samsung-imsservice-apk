.class public Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;
.super Ljava/lang/Object;
.source "FullCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# static fields
.field private static final DEDICATED_IMAGE_QUALITY:I = 0x5a

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private mFinal:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mInitial:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mMaxSize:J

.field private final mMinDimension:I

.field private mScale:I

.field private final mSecond:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mStandard:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->LOG_TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(JIIJIILcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V
    .locals 16
    .param p1, "size"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "maxSize"    # J
    .param p7, "maxWidth"    # I
    .param p8, "maxHeight"    # I
    .param p9, "mPanicDescriptor"    # Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 101
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v3, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;

    invoke-direct {v3, v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;-><init>(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)V

    iput-object v3, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mInitial:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 43
    new-instance v3, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;

    invoke-direct {v3, v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;-><init>(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)V

    iput-object v3, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mSecond:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 62
    new-instance v3, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;

    invoke-direct {v3, v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;-><init>(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)V

    iput-object v3, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mStandard:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 92
    iget-object v3, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mInitial:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    iput-object v3, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 93
    const/4 v3, 0x1

    iput v3, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mScale:I

    .line 103
    move-object/from16 v4, p9

    iput-object v4, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mFinal:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 104
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mMaxSize:J

    .line 106
    move/from16 v7, p7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 107
    .local v8, "startWidth":I
    move/from16 v9, p8

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 108
    .local v10, "startHeight":I
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mMinDimension:I

    .line 110
    div-int v11, v1, v8

    div-int v12, v2, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 112
    .local v11, "dimensionScale":I
    move-wide/from16 v12, p1

    long-to-double v14, v12

    iget-wide v3, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mMaxSize:J

    long-to-double v3, v3

    div-double/2addr v14, v3

    .line 113
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 112
    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 114
    .local v3, "sizeScale":I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mScale:I

    .line 116
    iget v14, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mMinDimension:I

    div-int/2addr v14, v4

    if-nez v14, :cond_0

    .line 117
    iget-object v4, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mFinal:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    iput-object v4, v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 119
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 14
    iget v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mScale:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;
    .param p1, "x1"    # I

    .line 14
    iput p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mScale:I

    return p1
.end method

.method static synthetic access$202(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;
    .param p1, "x1"    # Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 14
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 14
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mSecond:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 14
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mStandard:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 14
    iget-wide v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mMaxSize:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 14
    iget v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mMinDimension:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 14
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mFinal:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-object v0
.end method


# virtual methods
.method public next(J)Landroid/util/Pair;
    .locals 3
    .param p1, "currentSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullCompressionDescriptor::next size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;->next(J)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
