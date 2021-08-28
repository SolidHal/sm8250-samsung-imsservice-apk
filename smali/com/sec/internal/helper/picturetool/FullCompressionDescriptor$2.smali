.class Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;
.super Ljava/lang/Object;
.source "FullCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 43
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next(J)Landroid/util/Pair;
    .locals 8
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

    .line 48
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$400(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$202(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 50
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 51
    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$100(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    long-to-double v2, p1

    iget-object v4, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 52
    invoke-static {v4}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$100(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 53
    invoke-static {v4}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$500(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$102(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;I)I

    .line 55
    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v1}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$100(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
