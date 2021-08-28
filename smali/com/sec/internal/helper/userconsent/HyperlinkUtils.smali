.class public final Lcom/sec/internal/helper/userconsent/HyperlinkUtils;
.super Ljava/lang/Object;
.source "HyperlinkUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static makeLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;)V
    .locals 4
    .param p0, "stringBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "span"    # Landroid/text/style/URLSpan;
    .param p2, "hyperlinkOnClickListener"    # Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;

    .line 95
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 96
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 97
    .local v1, "end":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 99
    .local v2, "flags":I
    new-instance v3, Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;

    invoke-direct {v3, p2, p1}, Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;-><init>(Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;Landroid/text/style/URLSpan;)V

    .line 106
    .local v3, "clickableLink":Landroid/text/style/ClickableSpan;
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 107
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public static processLinks(Landroid/widget/TextView;Ljava/lang/String;Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;)V
    .locals 9
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "hyperlinkOnClickListener"    # Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;

    .line 45
    sget-object v0, Lcom/sec/internal/helper/userconsent/HyperlinkPatterns;->webUrlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 46
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v1, "messageBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 49
    .local v2, "startIndex":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v4, "<a href=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "rtsp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    const-string v4, "http://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</a>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    :goto_1
    move v2, v4

    .line 58
    .end local v3    # "url":Ljava/lang/String;
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v4

    .line 67
    .local v4, "messageSequence":Ljava/lang/CharSequence;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 71
    .local v5, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Landroid/text/style/URLSpan;

    invoke-virtual {v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    .line 73
    .local v6, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v7, v6

    :goto_2
    if-ge v3, v7, :cond_3

    aget-object v8, v6, v3

    .line 74
    .local v8, "urlSpan":Landroid/text/style/URLSpan;
    invoke-static {v5, v8, p2}, Lcom/sec/internal/helper/userconsent/HyperlinkUtils;->makeLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;)V

    .line 73
    .end local v8    # "urlSpan":Landroid/text/style/URLSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 80
    return-void
.end method
