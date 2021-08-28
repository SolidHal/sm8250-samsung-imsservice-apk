.class public Lcom/sec/internal/helper/picturetool/UnsupportedContext;
.super Ljava/lang/Object;
.source "UnsupportedContext.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/IContentTypeContext;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/helper/picturetool/UnsupportedContext;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/UnsupportedContext;->LOG_TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BAD ACCESS"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BAD ACCESS"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BAD ACCESS"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 55
    const-class v0, Lcom/sec/internal/helper/picturetool/UnsupportedContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateExtension()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/sec/internal/helper/picturetool/UnsupportedContext;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unsupported image format"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
