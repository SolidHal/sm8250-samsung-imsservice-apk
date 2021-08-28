.class Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;
.super Ljava/lang/Object;
.source "VideoPreviewExtractor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->extract(Ljava/io/File;Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$previewDimensions:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;Ljava/io/File;Landroid/util/Pair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    .line 63
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->this$0:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    iput-object p2, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->val$previewDimensions:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDimensions()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->val$previewDimensions:Landroid/util/Pair;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->val$file:Ljava/io/File;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
