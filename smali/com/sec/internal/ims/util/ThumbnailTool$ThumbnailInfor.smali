.class Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
.super Ljava/lang/Object;
.source "ThumbnailTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/ThumbnailTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailInfor"
.end annotation


# instance fields
.field private callback:Landroid/os/Message;

.field private destFilePath:Ljava/lang/String;

.field private height:I

.field private maxSize:J

.field private originalFilePath:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/util/ThumbnailTool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$1;

    .line 68
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->originalFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->originalFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->destFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->destFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    .line 68
    iget-wide v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->maxSize:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    .param p1, "x1"    # J

    .line 68
    iput-wide p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->maxSize:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    .line 68
    iget v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->width:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->width:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    .line 68
    iget v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->height:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->height:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->callback:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    .param p1, "x1"    # Landroid/os/Message;

    .line 68
    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->callback:Landroid/os/Message;

    return-object p1
.end method
