.class Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "HyperlinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/helper/userconsent/HyperlinkUtils;->makeLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hyperlinkOnClickListener:Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;

.field final synthetic val$span:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;Landroid/text/style/URLSpan;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;->val$hyperlinkOnClickListener:Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;

    iput-object p2, p0, Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;->val$span:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;->val$hyperlinkOnClickListener:Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;

    iget-object v1, p0, Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;->val$span:Landroid/text/style/URLSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;->onClick(Landroid/view/View;Landroid/net/Uri;)V

    .line 102
    return-void
.end method
