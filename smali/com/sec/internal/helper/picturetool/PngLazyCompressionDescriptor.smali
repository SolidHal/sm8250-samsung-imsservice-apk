.class public Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;
.super Ljava/lang/Object;
.source "PngLazyCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final STUB_IMAGE_QUALITY:I = 0x64


# instance fields
.field private mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mInitial:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mPanic:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mScale:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->LOG_TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(IIIILcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "mPanicDescriptor"    # Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor$1;-><init>(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;)V

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mInitial:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 40
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->getStartWidthScale(II)I

    move-result v0

    .line 41
    .local v0, "widthScale":I
    invoke-direct {p0, p2, p4}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->getStartHeightScale(II)I

    move-result v1

    .line 43
    .local v1, "heightScale":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mScale:I

    .line 44
    iput-object p5, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mPanic:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;
    .param p1, "x1"    # Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 14
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;

    .line 14
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mPanic:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;

    .line 14
    iget v0, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mScale:I

    return v0
.end method

.method private getStartHeightScale(II)I
    .locals 1
    .param p1, "height"    # I
    .param p2, "maxHeight"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->getStartScale(II)I

    move-result v0

    return v0
.end method

.method private getStartScale(II)I
    .locals 3
    .param p1, "dimension"    # I
    .param p2, "maxDimension"    # I

    .line 55
    div-int v0, p1, p2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 56
    .local v0, "startScale":I
    if-ge p2, p1, :cond_1

    .line 57
    mul-int v2, v0, p2

    rem-int v2, p1, v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 58
    :cond_0
    nop

    :goto_0
    add-int/2addr v0, v1

    .line 64
    :cond_1
    return v0
.end method

.method private getStartWidthScale(II)I
    .locals 1
    .param p1, "width"    # I
    .param p2, "maxWidth"    # I

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->getStartScale(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public next(J)Landroid/util/Pair;
    .locals 1
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

    .line 50
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;->next(J)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
