.class public Lcom/sec/internal/helper/picturetool/PngContext;
.super Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;
.source "PngContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/helper/picturetool/PngContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/PngContext;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 24
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public processSpecificData(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/sec/internal/helper/picturetool/PngContext;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processSpecificData: Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    const-class v0, Lcom/sec/internal/helper/picturetool/PngContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
