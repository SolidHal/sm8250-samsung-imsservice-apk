.class public final Lorg/xbill/DNS/Options;
.super Ljava/lang/Object;
.source "Options.java"


# static fields
.field private static table:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/Options;->refresh()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 35
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;)Z
    .locals 3
    .param p0, "option"    # Ljava/lang/String;

    .line 92
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    return v1

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static clear()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    .line 63
    return-void
.end method

.method public static intValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "option"    # Ljava/lang/String;

    .line 110
    invoke-static {p0}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 113
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v1, "val":I
    if-lez v1, :cond_0

    .line 115
    return v1

    .line 118
    .end local v1    # "val":I
    :cond_0
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 120
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public static refresh()V
    .locals 6

    .line 42
    const-string v0, "dnsjava.options"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 44
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "token":Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 48
    .local v3, "index":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 49
    invoke-static {v2}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "option":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "value":Ljava/lang/String;
    invoke-static {v4, v5}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "option":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 57
    .end local v1    # "st":Ljava/util/StringTokenizer;
    :cond_1
    return-void
.end method

.method public static set(Ljava/lang/String;)V
    .locals 3
    .param p0, "option"    # Ljava/lang/String;

    .line 68
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    .line 70
    :cond_0
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "option"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 76
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    .line 78
    :cond_0
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public static unset(Ljava/lang/String;)V
    .locals 2
    .param p0, "option"    # Ljava/lang/String;

    .line 84
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public static value(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "option"    # Ljava/lang/String;

    .line 100
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
