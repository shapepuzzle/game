export function createAdsenseTag(mode) {
    console.log(mode);
    if (mode === "production") {
        var tagScript = document.createElement('script');
        tagScript.async = true;
        tagScript.src = 'https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3970758666730748';
        tagScript.crossorigin='anonymous'

        var firstScript = document.getElementsByTagName('script')[0];
        firstScript.parentNode.insertBefore(tagScript, firstScript);
    }
}
