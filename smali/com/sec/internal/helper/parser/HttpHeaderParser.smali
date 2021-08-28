.class Lcom/sec/internal/helper/parser/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ","

.field private static final QUOTE:Ljava/lang/String; = "\""

.field protected static final REGEX_ALGORITHM:Ljava/lang/String; = "algorithm[\\s]*="

.field protected static final REGEX_NONCE:Ljava/lang/String; = "nonce[\\s]*="

.field protected static final REGEX_OPAQUE:Ljava/lang/String; = "opaque[\\s]*="

.field protected static final REGEX_QOP:Ljava/lang/String; = "qop[\\s]*="

.field protected static final REGEX_REALM:Ljava/lang/String; = "realm[\\s]*="

.field protected static final REGEX_STALE:Ljava/lang/String; = "stale[\\s]*="

.field private static final SPACE_REGEX:Ljava/lang/String; = "[\\s]*"

.field protected static final SPACE_SEPERATOR_REGEX:Ljava/lang/String; = "[\\s]*="


# instance fields
.field private paramMatcher:Ljava/util/regex/Matcher;

.field private paramPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/parser/HttpHeaderParser;->paramPattern:Ljava/util/regex/Pattern;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/parser/HttpHeaderParser;->paramMatcher:Ljava/util/regex/Matcher;

    .line 48
    return-void
.end method


# virtual methods
.method protected getParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "splitHeader"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    .line 54
    .local v0, "paramVal":Ljava/lang/String;
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ","

    if-eqz v2, :cond_0

    .line 55
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_1
    move-object v0, p1

    .line 61
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_2
    return-object v0
.end method

.method protected getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "paramSplit":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/HttpHeaderParser;->paramPattern:Ljava/util/regex/Pattern;

    .line 70
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/HttpHeaderParser;->paramMatcher:Ljava/util/regex/Matcher;

    .line 71
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/sec/internal/helper/parser/HttpHeaderParser;->paramMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    return-object v0
.end method
