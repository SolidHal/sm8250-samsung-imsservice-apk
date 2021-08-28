.class public abstract Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;
.super Ljava/lang/Object;
.source "SupportedContextAdapter.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/IContentTypeContext;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;->LOG_TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-static {p2, p1}, Lcom/sec/internal/helper/picturetool/UniqueFilePathResolver;->getUniqueFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

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

    .line 39
    sget-object v0, Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "validateExtension:: Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
