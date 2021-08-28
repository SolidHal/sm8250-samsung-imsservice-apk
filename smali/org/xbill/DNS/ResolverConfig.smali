.class public Lorg/xbill/DNS/ResolverConfig;
.super Ljava/lang/Object;
.source "ResolverConfig.java"


# static fields
.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

.field private static currentConfig:Lorg/xbill/DNS/ResolverConfig;


# instance fields
.field private ndots:I

.field private searchlist:[Lorg/xbill/DNS/Name;

.field private servers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 43
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->refresh()V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    .line 48
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findProperty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    return-void

    .line 50
    :cond_0
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findSunJVM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-nez v1, :cond_8

    .line 53
    :cond_2
    const-string/jumbo v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "OS":Ljava/lang/String;
    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "vendor":Ljava/lang/String;
    const-string v3, "Windows"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_5

    .line 56
    const-string v3, "95"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_4

    .line 57
    const-string v3, "98"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_4

    .line 58
    const-string v3, "ME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_3

    goto :goto_0

    .line 61
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findNT()V

    goto :goto_1

    .line 59
    :cond_4
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->find95()V

    goto :goto_1

    .line 62
    :cond_5
    const-string v3, "NetWare"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_6

    .line 63
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findNetware()V

    goto :goto_1

    .line 64
    :cond_6
    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_7

    .line 65
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findAndroid()V

    goto :goto_1

    .line 67
    :cond_7
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findUnix()V

    .line 70
    .end local v1    # "OS":Ljava/lang/String;
    .end local v2    # "vendor":Ljava/lang/String;
    :cond_8
    :goto_1
    return-void
.end method

.method private addSearch(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .line 84
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "adding search "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_0
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v0, "name":Lorg/xbill/DNS/Name;
    nop

    .line 92
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    return-void

    .line 94
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void

    .line 89
    .end local v0    # "name":Lorg/xbill/DNS/Name;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    return-void
.end method

.method private addServer(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .line 74
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    return-void

    .line 76
    :cond_0
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "adding server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 288
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private configureFromLists(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "lserver"    # Ljava/util/List;
    .param p2, "lsearch"    # Ljava/util/List;

    .line 115
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    new-array v0, v1, [Lorg/xbill/DNS/Name;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Name;

    check-cast v0, [Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    .line 119
    :cond_1
    return-void
.end method

.method private configureNdots(I)V
    .locals 1
    .param p1, "lndots"    # I

    .line 123
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 124
    iput p1, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    .line 125
    :cond_0
    return-void
.end method

.method private find95()V
    .locals 4

    .line 393
    const-string/jumbo v0, "winipcfg.out"

    .line 396
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "winipcfg /all /batch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 397
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 398
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;)V

    .line 400
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    nop

    .line 405
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "f":Ljava/io/File;
    return-void

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    return-void
.end method

.method private findAndroid()V
    .locals 13

    .line 434
    const-string v0, "^\\d+(\\.\\d+){3}$"

    .line 435
    .local v0, "re1":Ljava/lang/String;
    const-string v1, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    .line 436
    .local v1, "re2":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v2, "lserver":Ljava/util/ArrayList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v3, "lsearch":Ljava/util/ArrayList;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    .line 440
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 441
    .local v4, "SystemProperties":Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Lorg/xbill/DNS/ResolverConfig;->class$java$lang$String:Ljava/lang/Class;

    if-nez v8, :cond_0

    const-string v8, "java.lang.String"

    .line 443
    invoke-static {v8}, Lorg/xbill/DNS/ResolverConfig;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/xbill/DNS/ResolverConfig;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v8, Lorg/xbill/DNS/ResolverConfig;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 442
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 444
    .local v5, "method":Ljava/lang/reflect/Method;
    const-string v7, "net.dns1"

    const-string v8, "net.dns2"

    const-string v10, "net.dns3"

    const-string v11, "net.dns4"

    filled-new-array {v7, v8, v10, v11}, [Ljava/lang/String;

    move-result-object v7

    .line 446
    .local v7, "netdns":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v10, v7

    if-ge v8, v10, :cond_3

    .line 447
    new-array v10, v6, [Ljava/lang/Object;

    aget-object v11, v7, v8

    aput-object v11, v10, v9

    .line 448
    .local v10, "args":[Ljava/lang/Object;
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 449
    .local v11, "v":Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v12, "^\\d+(\\.\\d+){3}$"

    .line 450
    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 451
    :cond_1
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 452
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v10    # "args":[Ljava/lang/Object;
    .end local v11    # "v":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 456
    .end local v4    # "SystemProperties":Ljava/lang/Class;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "netdns":[Ljava/lang/String;
    .end local v8    # "i":I
    :cond_3
    goto :goto_2

    .line 454
    :catch_0
    move-exception v4

    .line 457
    :goto_2
    invoke-direct {p0, v2, v3}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 458
    return-void
.end method

.method private findNT()V
    .locals 2

    .line 414
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ipconfig /all"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 415
    .local v0, "p":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v0    # "p":Ljava/lang/Process;
    nop

    .line 421
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method

.method private findNetware()V
    .locals 1

    .line 280
    const-string/jumbo v0, "sys:/etc/resolv.cfg"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ResolverConfig;->findResolvConf(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private findProperty()Z
    .locals 7

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v0, "lserver":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v2, "lsearch":Ljava/util/List;
    const-string v3, "dns.server"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "prop":Ljava/lang/String;
    const-string v4, ","

    if-eqz v3, :cond_0

    .line 141
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v5, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 146
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :cond_0
    const-string v5, "dns.search"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    if-eqz v3, :cond_1

    .line 148
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 149
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 152
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :cond_1
    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 153
    iget-object v4, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private findResolvConf(Ljava/lang/String;)V
    .locals 10
    .param p1, "file"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 223
    nop

    .line 224
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 225
    .local v1, "isr":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 226
    .local v2, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v3, "lserver":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v5

    .line 228
    .local v4, "lsearch":Ljava/util/List;
    const/4 v5, -0x1

    .line 231
    .local v5, "lndots":I
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 232
    const-string v6, "nameserver"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 234
    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 235
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    .line 236
    .end local v6    # "st":Ljava/util/StringTokenizer;
    goto :goto_0

    .line 237
    :cond_1
    const-string v6, "domain"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 238
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v6    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 240
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_2

    .line 241
    goto :goto_0

    .line 242
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 243
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 244
    .end local v6    # "st":Ljava/util/StringTokenizer;
    :cond_3
    goto :goto_0

    .line 245
    :cond_4
    const-string/jumbo v6, "search"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 246
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 247
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 248
    :cond_5
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v6    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 250
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 251
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 252
    .end local v6    # "st":Ljava/util/StringTokenizer;
    :cond_6
    goto :goto_0

    .line 253
    :cond_7
    const-string/jumbo v6, "options"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 254
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v6    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 256
    :goto_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 257
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "token":Ljava/lang/String;
    const-string v9, "ndots:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 259
    invoke-direct {p0, v8}, Lorg/xbill/DNS/ResolverConfig;->parseNdots(Ljava/lang/String;)I

    move-result v9

    move v5, v9

    .line 261
    .end local v8    # "token":Ljava/lang/String;
    :cond_8
    goto :goto_2

    .line 262
    .end local v6    # "st":Ljava/util/StringTokenizer;
    :cond_9
    goto/16 :goto_0

    .line 264
    :cond_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    .end local v7    # "line":Ljava/lang/String;
    goto :goto_3

    .line 266
    :catch_0
    move-exception v6

    .line 269
    :goto_3
    invoke-direct {p0, v3, v4}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 270
    invoke-direct {p0, v5}, Lorg/xbill/DNS/ResolverConfig;->configureNdots(I)V

    .line 271
    return-void

    .line 221
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "lserver":Ljava/util/List;
    .end local v4    # "lsearch":Ljava/util/List;
    .end local v5    # "lndots":I
    :catch_1
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private findSunJVM()Z
    .locals 13

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v0, "lserver":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v2, "lsearch":Ljava/util/List;
    :try_start_0
    new-array v3, v1, [Ljava/lang/Class;

    .line 169
    .local v3, "noClasses":[Ljava/lang/Class;
    new-array v4, v1, [Ljava/lang/Object;

    .line 170
    .local v4, "noObjects":[Ljava/lang/Object;
    const-string/jumbo v5, "sun.net.dns.ResolverConfiguration"

    .line 171
    .local v5, "resConfName":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 175
    .local v6, "resConfClass":Ljava/lang/Class;
    const-string/jumbo v7, "open"

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 176
    .local v7, "open":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 179
    .local v8, "resConf":Ljava/lang/Object;
    const-string v9, "nameservers"

    invoke-virtual {v6, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 181
    .local v9, "nameservers":Ljava/lang/reflect/Method;
    invoke-virtual {v9, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 184
    .local v10, "lserver_tmp":Ljava/util/List;
    const-string/jumbo v11, "searchlist"

    invoke-virtual {v6, v11, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 186
    .local v11, "searchlist":Ljava/lang/reflect/Method;
    invoke-virtual {v11, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v12

    .line 190
    .end local v4    # "noObjects":[Ljava/lang/Object;
    .end local v5    # "resConfName":Ljava/lang/String;
    .end local v6    # "resConfClass":Ljava/lang/Class;
    .end local v7    # "open":Ljava/lang/reflect/Method;
    .end local v8    # "resConf":Ljava/lang/Object;
    .end local v9    # "nameservers":Ljava/lang/reflect/Method;
    .end local v11    # "searchlist":Ljava/lang/reflect/Method;
    .local v3, "lsearch_tmp":Ljava/util/List;
    nop

    .line 192
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 193
    return v1

    .line 195
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 196
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 201
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 202
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .restart local v1    # "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 206
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 207
    const/4 v1, 0x1

    return v1

    .line 188
    .end local v3    # "lsearch_tmp":Ljava/util/List;
    .end local v10    # "lserver_tmp":Ljava/util/List;
    :catch_0
    move-exception v3

    .line 189
    .local v3, "e":Ljava/lang/Exception;
    return v1
.end method

.method private findUnix()V
    .locals 1

    .line 275
    const-string v0, "/etc/resolv.conf"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ResolverConfig;->findResolvConf(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private findWin(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;

    .line 371
    const-string/jumbo v0, "org.xbill.DNS.windows.parse.buffer"

    .line 372
    .local v0, "property":Ljava/lang/String;
    const/16 v1, 0x2000

    .line 373
    .local v1, "defaultBufSize":I
    const/16 v2, 0x2000

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 374
    .local v2, "bufSize":I
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 375
    .local v3, "b":Ljava/io/BufferedInputStream;
    invoke-virtual {v3, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 376
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;Ljava/util/Locale;)V

    .line 377
    iget-object v4, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 379
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    nop

    .line 384
    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    invoke-direct {v4, v5, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;Ljava/util/Locale;)V

    goto :goto_0

    .line 381
    :catch_0
    move-exception v4

    .line 382
    .local v4, "e":Ljava/io/IOException;
    return-void

    .line 386
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private findWin(Ljava/io/InputStream;Ljava/util/Locale;)V
    .locals 21
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 288
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, ":"

    sget-object v0, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.xbill.DNS.ResolverConfig"

    invoke-static {v0}, Lorg/xbill/DNS/ResolverConfig;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "packageName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ".windows.DNSServer"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "resPackageName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 292
    invoke-static {v5, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    move-object v6, v0

    .local v0, "res":Ljava/util/ResourceBundle;
    goto :goto_0

    .line 294
    .end local v0    # "res":Ljava/util/ResourceBundle;
    :cond_1
    invoke-static {v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    move-object v6, v0

    .line 296
    .local v6, "res":Ljava/util/ResourceBundle;
    :goto_0
    const-string v0, "host_name"

    invoke-virtual {v6, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, "host_name":Ljava/lang/String;
    const-string/jumbo v0, "primary_dns_suffix"

    invoke-virtual {v6, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, "primary_dns_suffix":Ljava/lang/String;
    const-string v0, "dns_suffix"

    invoke-virtual {v6, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, "dns_suffix":Ljava/lang/String;
    const-string v0, "dns_servers"

    invoke-virtual {v6, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 301
    .local v10, "dns_servers":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    move-object/from16 v12, p1

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v11, v0

    .line 303
    .local v11, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 304
    .local v13, "lserver":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 305
    .local v14, "lsearch":Ljava/util/List;
    const/4 v0, 0x0

    .line 306
    .local v0, "line":Ljava/lang/String;
    const/4 v15, 0x0

    .line 307
    .local v15, "readingServers":Z
    const/16 v16, 0x0

    .line 308
    .local v16, "readingSearches":Z
    :goto_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .end local v0    # "line":Ljava/lang/String;
    .local v18, "line":Ljava/lang/String;
    if-eqz v17, :cond_12

    .line 309
    new-instance v0, Ljava/util/StringTokenizer;

    move-object/from16 v2, v18

    .end local v18    # "line":Ljava/lang/String;
    .local v2, "line":Ljava/lang/String;
    invoke-direct {v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v0

    .line 310
    .local v17, "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    const/4 v15, 0x0

    .line 312
    const/16 v16, 0x0

    .line 313
    move-object v0, v2

    move-object/from16 v2, p2

    goto :goto_1

    .line 315
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "s":Ljava/lang/String;
    move-object/from16 v18, v0

    .end local v0    # "s":Ljava/lang/String;
    .local v18, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v19, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v19, "packageName":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 317
    const/4 v0, 0x0

    .line 318
    .end local v15    # "readingServers":Z
    .local v0, "readingServers":Z
    const/4 v15, 0x0

    move/from16 v16, v15

    move v15, v0

    .line 321
    .end local v0    # "readingServers":Z
    .restart local v15    # "readingServers":Z
    :cond_3
    :try_start_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_6

    move-object/from16 v4, v18

    .line 322
    .end local v18    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_4

    .line 323
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v0

    goto :goto_2

    .line 364
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v13    # "lserver":Ljava/util/List;
    .end local v14    # "lsearch":Ljava/util/List;
    .end local v15    # "readingServers":Z
    .end local v16    # "readingSearches":Z
    .end local v17    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v0

    move-object/from16 v20, v5

    goto/16 :goto_9

    .line 326
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v13    # "lserver":Ljava/util/List;
    .restart local v14    # "lsearch":Ljava/util/List;
    .restart local v15    # "readingServers":Z
    .restart local v16    # "readingSearches":Z
    .restart local v17    # "st":Ljava/util/StringTokenizer;
    :cond_4
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v4, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0
    :try_end_3
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 330
    .local v0, "name":Lorg/xbill/DNS/Name;
    nop

    .line 331
    move-object/from16 v20, v5

    .end local v5    # "resPackageName":Ljava/lang/String;
    .local v20, "resPackageName":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v5

    move-object/from16 v18, v0

    .end local v0    # "name":Lorg/xbill/DNS/Name;
    .local v18, "name":Lorg/xbill/DNS/Name;
    const/4 v0, 0x1

    if-ne v5, v0, :cond_5

    .line 332
    goto/16 :goto_7

    .line 333
    :cond_5
    invoke-direct {v1, v4, v14}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 334
    .end local v18    # "name":Lorg/xbill/DNS/Name;
    goto/16 :goto_8

    .line 328
    .end local v20    # "resPackageName":Ljava/lang/String;
    .restart local v5    # "resPackageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v20, v5

    move-object v5, v0

    .end local v5    # "resPackageName":Ljava/lang/String;
    .restart local v20    # "resPackageName":Ljava/lang/String;
    move-object v0, v5

    .line 329
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    goto/16 :goto_7

    .line 334
    .end local v0    # "e":Lorg/xbill/DNS/TextParseException;
    .end local v4    # "s":Ljava/lang/String;
    .end local v20    # "resPackageName":Ljava/lang/String;
    .restart local v5    # "resPackageName":Ljava/lang/String;
    .local v18, "s":Ljava/lang/String;
    :cond_6
    move-object/from16 v20, v5

    .end local v5    # "resPackageName":Ljava/lang/String;
    .restart local v20    # "resPackageName":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_9

    move-object/from16 v0, v18

    .line 335
    .end local v18    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 336
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_3

    .line 337
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 338
    goto :goto_7

    .line 339
    :cond_8
    invoke-direct {v1, v0, v14}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 340
    const/4 v4, 0x1

    move/from16 v16, v4

    .end local v16    # "readingSearches":Z
    .local v4, "readingSearches":Z
    goto :goto_8

    .line 341
    .end local v0    # "s":Ljava/lang/String;
    .end local v4    # "readingSearches":Z
    .restart local v16    # "readingSearches":Z
    .restart local v18    # "s":Ljava/lang/String;
    :cond_9
    if-nez v16, :cond_e

    .line 342
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_a

    goto :goto_5

    .line 350
    :cond_a
    if-nez v15, :cond_b

    .line 351
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_11

    .line 353
    :cond_b
    move-object/from16 v0, v18

    .end local v18    # "s":Ljava/lang/String;
    .restart local v0    # "s":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 354
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_4

    .line 355
    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 356
    goto :goto_7

    .line 357
    :cond_d
    invoke-direct {v1, v0, v13}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    .line 358
    const/4 v4, 0x1

    move v15, v4

    .end local v15    # "readingServers":Z
    .local v4, "readingServers":Z
    goto :goto_8

    .line 344
    .end local v0    # "s":Ljava/lang/String;
    .end local v4    # "readingServers":Z
    .restart local v15    # "readingServers":Z
    .restart local v18    # "s":Ljava/lang/String;
    :cond_e
    :goto_5
    move-object/from16 v0, v18

    .end local v18    # "s":Ljava/lang/String;
    .restart local v0    # "s":Ljava/lang/String;
    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 345
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_6

    .line 346
    :cond_f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 347
    nop

    .line 308
    .end local v0    # "s":Ljava/lang/String;
    .end local v17    # "st":Ljava/util/StringTokenizer;
    :goto_7
    move-object v0, v2

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v2, p2

    goto/16 :goto_1

    .line 348
    .restart local v0    # "s":Ljava/lang/String;
    .restart local v17    # "st":Ljava/util/StringTokenizer;
    :cond_10
    invoke-direct {v1, v0, v14}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 349
    const/4 v4, 0x1

    move/from16 v16, v4

    .line 360
    .end local v0    # "s":Ljava/lang/String;
    .end local v17    # "st":Ljava/util/StringTokenizer;
    :cond_11
    :goto_8
    move-object v0, v2

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v2, p2

    goto/16 :goto_1

    .line 364
    .end local v2    # "line":Ljava/lang/String;
    .end local v13    # "lserver":Ljava/util/List;
    .end local v14    # "lsearch":Ljava/util/List;
    .end local v15    # "readingServers":Z
    .end local v16    # "readingSearches":Z
    .end local v20    # "resPackageName":Ljava/lang/String;
    .restart local v5    # "resPackageName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v20, v5

    .end local v5    # "resPackageName":Ljava/lang/String;
    .restart local v20    # "resPackageName":Ljava/lang/String;
    goto :goto_9

    .line 362
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "resPackageName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    .restart local v5    # "resPackageName":Ljava/lang/String;
    .restart local v13    # "lserver":Ljava/util/List;
    .restart local v14    # "lsearch":Ljava/util/List;
    .restart local v15    # "readingServers":Z
    .restart local v16    # "readingSearches":Z
    .local v18, "line":Ljava/lang/String;
    :cond_12
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v2, v18

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "resPackageName":Ljava/lang/String;
    .end local v18    # "line":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v20    # "resPackageName":Ljava/lang/String;
    invoke-direct {v1, v13, v14}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 365
    .end local v2    # "line":Ljava/lang/String;
    .end local v13    # "lserver":Ljava/util/List;
    .end local v14    # "lsearch":Ljava/util/List;
    .end local v15    # "readingServers":Z
    .end local v16    # "readingSearches":Z
    goto :goto_9

    .line 364
    :catch_3
    move-exception v0

    goto :goto_9

    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "resPackageName":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "resPackageName":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 366
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "resPackageName":Ljava/lang/String;
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v20    # "resPackageName":Ljava/lang/String;
    :goto_9
    return-void
.end method

.method public static declared-synchronized getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;
    .locals 2

    const-class v0, Lorg/xbill/DNS/ResolverConfig;

    monitor-enter v0

    .line 496
    :try_start_0
    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseNdots(Ljava/lang/String;)I
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 101
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "ndots":I
    if-ltz v0, :cond_1

    .line 103
    const-string/jumbo v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "setting ndots "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    return v0

    .line 109
    .end local v0    # "ndots":I
    :cond_1
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static refresh()V
    .locals 3

    .line 502
    new-instance v0, Lorg/xbill/DNS/ResolverConfig;

    invoke-direct {v0}, Lorg/xbill/DNS/ResolverConfig;-><init>()V

    .line 503
    .local v0, "newConfig":Lorg/xbill/DNS/ResolverConfig;
    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string/jumbo v1, "org.xbill.DNS.ResolverConfig"

    invoke-static {v1}, Lorg/xbill/DNS/ResolverConfig;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    :cond_0
    monitor-enter v1

    .line 504
    :try_start_0
    sput-object v0, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;

    .line 505
    monitor-exit v1

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public ndots()I
    .locals 1

    .line 488
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    if-gez v0, :cond_0

    .line 489
    const/4 v0, 0x1

    return v0

    .line 490
    :cond_0
    return v0
.end method

.method public searchPath()[Lorg/xbill/DNS/Name;
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public server()Ljava/lang/String;
    .locals 2

    .line 469
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x0

    return-object v0

    .line 471
    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public servers()[Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    return-object v0
.end method
