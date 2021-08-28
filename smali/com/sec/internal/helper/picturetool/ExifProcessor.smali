.class public Lcom/sec/internal/helper/picturetool/ExifProcessor;
.super Ljava/lang/Object;
.source "ExifProcessor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/helper/picturetool/ExifProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/ExifProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public process(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/sec/internal/helper/picturetool/ExifProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "process: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "originalPath":Ljava/lang/String;
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 35
    .local v1, "sourceOrientation":I
    new-instance v3, Landroid/media/ExifInterface;

    .line 36
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 37
    .local v3, "destinationExifInterface":Landroid/media/ExifInterface;
    nop

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {v3, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 41
    sget-object v2, Lcom/sec/internal/helper/picturetool/ExifProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "process: Exit"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method
